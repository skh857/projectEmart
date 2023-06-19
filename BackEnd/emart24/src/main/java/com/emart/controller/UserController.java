package com.emart.controller;

import java.net.URLEncoder;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.emart.domain.UserDTO;
import com.emart.service.UserService;

@Controller
public class UserController {

	@Autowired
	UserService userService;
	
	// 회원가입 페이지 이동
	@GetMapping("/register/add")
	public String register() {
		
		return "register";
	}
	
	// 회원가입 처리
	@PostMapping("/register/success")
	public String success(UserDTO userDTO, Model model) throws Exception {
		
		// 아이디 중복 체크
		int result = idOverlap(userDTO);
		
		// 중복일 경우 회원가입 페이지로 이동
		if(result != 0) {
			return "redirect:/register/add";
		}
		
		userService.register(userDTO);
		
		// 메세지 및 경로 Model에 저장
		model.addAttribute("msg", "회원 가입이 완료되었습니다.");
		model.addAttribute("url", "/emart");
		
		return "alertPrint";
	}
	
	// 아이디 중복 체크
	@ResponseBody
	@PostMapping("/register/idOverlap")
	public int idOverlap(UserDTO userDTO) throws Exception {
		
		int result = userService.idOverlap(userDTO);
		
		return result;
	}
	
	// 로그인
	@GetMapping("/login")
	public String login() {
		
		return "login";
	}
	
	// 로그아웃
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		// 세션에 저장되어 있는 ID를 지우기 위한 세션 삭제
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 로그인 처리
	@PostMapping("/login")
	public String login(UserDTO userDTO, String toURL, boolean rememberId, HttpServletResponse response, HttpServletRequest request) throws Exception {
		
		if(loginCheck(userDTO) != 1) {
			String msg = URLEncoder.encode("아이디 또는 비밀번호가 일치하지 않습니다.", "utf-8");
			
			return "redirect:/login?msg=" + msg;
		}
		
		// id와 pwd가 일치하면 홈으로 이동
		// 세션 객체를 얻어옴
		HttpSession session = request.getSession();
		
		session.setAttribute("id", userDTO.getId());
		
		// 아이디 기억하기
		if(rememberId) {
			// 쿠키를 생성
			Cookie cookie = new Cookie("id", userDTO.getId());
				
			// 응답에 저장
			response.addCookie(cookie);
		} else {
			// 쿠키 삭제
			Cookie cookie = new Cookie("id", userDTO.getId());
			cookie.setMaxAge(0);	// 쿠키 삭제
			
			// 응답에 저장
			response.addCookie(cookie);
		}
		
		// 홈으로 이동
		toURL = toURL == null || toURL.equals("") ? "/" : toURL;
		
		return "redirect:" + toURL;
	}
	
	// 계정 삭제
	@PostMapping("/remove")
	public String remove(UserDTO userDTO, Model model, HttpSession session) {
		
		try {
			// 계정 삭제 SQL 실행
			int rowCnt = userService.remove(userDTO);
			
			session.invalidate();
			
			// 메세지 및 경로 Model에 저장
			model.addAttribute("msg", "탈퇴 처리되었습니다.");
			model.addAttribute("url", "/emart");
			
			if(rowCnt != 1) {
				throw new Exception("remove error");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "alertPrint";
	}
	
	// 로그인 상태 체크
	private int loginCheck(UserDTO userDTO) throws Exception {
		
		int result = userService.login(userDTO);
		
		return result;
	}
}
