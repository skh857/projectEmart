package com.orange.basket.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.orange.basket.domain.BasketDTO;
import com.orange.basket.service.BasketService;
import com.orange.goods.domain.GoodsDTO;

@Controller
public class BasketController {
	
	@Autowired
	BasketService basketService;
	
	// 장바구니 상품 출력 메서드
	@GetMapping("/basket/list")
	public String list(Model m, HttpSession session, HttpServletRequest request) {
		
		// 로그인 여부 확인
		if(!loginCheck(request)) {
			return "redirect:/login?toURL=" + request.getRequestURL();
		}
		
		String id = (String) session.getAttribute("id");
		
		try {
			// 전체 수량, 가격
			int sumCnt = 0;
			int sumPrice = 0;
			
			List<BasketDTO> baskets = basketService.selectAllBasketByUser(id);
			
			// 전체 수량, 가격 계산
			for(int i = 0; i < baskets.size(); i++) {
				sumCnt += baskets.get(i).getB_purchase_cnt();
				sumPrice += baskets.get(i).getB_purchase_price();
			}
			
			// Model에 추가하여 전달
			m.addAttribute("baskets", baskets);
			m.addAttribute("sumCnt", sumCnt);
			m.addAttribute("sumPrice", sumPrice);
			
		} catch (Exception e) {
			e.printStackTrace();
		} 
		
		return "basket";
	}
	
	// 상품 추가 메서드
	@PostMapping("/goods/add")
	public String goodsAdd(GoodsDTO goodsDTO, Integer b_purchase_cnt, Model m, HttpSession session, HttpServletRequest request) {
		
		// 로그인 여부 확인
		if(!loginCheck(request)) {
			return "redirect:/login?toURL=http://localhost:8090/emart/goods";
		}
		
		String id = (String) session.getAttribute("id");
		
		try {
			// 상품 수량 선택을 안했을 때 선택 수량을 1로 고정
			if(b_purchase_cnt == null) {
				b_purchase_cnt = 1;
			}
			
			BasketDTO basketDTO = new BasketDTO();
			
			// 상품을 장바구니의 setter를 이요하여 저장
			basketDTO.setB_image(goodsDTO.getG_image());
			basketDTO.setB_name(goodsDTO.getG_name());
			basketDTO.setB_price(goodsDTO.getG_price());
			basketDTO.setB_purchase_cnt(b_purchase_cnt);
			basketDTO.setB_purchase_price(basketDTO.getB_price() * basketDTO.getB_purchase_cnt());
			basketDTO.setG_no(goodsDTO.getG_no());
			basketDTO.setId(id);
			
			// 장바구니 내 상품이 있을 때
			if(basketService.selectBasket(basketDTO) != 0) {
				// 중복 상품 추가
				basketService.duplicateAdd(basketDTO);
				
				m.addAttribute("msg", "상품이 " + b_purchase_cnt + "개 중복 추가되었습니다.");
				m.addAttribute("url", "/emart/basket/list");
				
				return "alertPrint";
			}
			
			// 장바구니에 새 상품 등록
			basketService.insertBasket(basketDTO);
			
			m.addAttribute("msg", "상품이 " + b_purchase_cnt + "개 추가되었습니다.");
			m.addAttribute("url", "/emart/basket/list");
			m.addAttribute("id", basketDTO.getId());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "alertPrint";
	}
	
	// 로그인 여부 확인 메서드
	private boolean loginCheck(HttpServletRequest request) {
	
		HttpSession session = request.getSession();
		
		// id 값이 null이 아닐 때 true 반환, null일 때 false 반환
		return session.getAttribute("id") != null;
	}
		
}
