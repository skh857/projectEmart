package com.emart.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emart.dao.UserDAO;
import com.emart.domain.UserDTO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;
	
	// 회원 가입
	@Override
	public int register(UserDTO userDTO) throws Exception {
		return userDAO.register(userDTO);
	}
	
	// 아이디 중복 체크
	@Override
	public int idOverlap(UserDTO userDTO) throws Exception {
		return userDAO.idOverlap(userDTO);
	}
	
	// 로그인
	@Override
	public int login(UserDTO userDTO) throws Exception {
		return userDAO.login(userDTO);
	}
	
	// 계정 삭제
	@Override
	public int remove(UserDTO userDTO) throws Exception {
		return userDAO.delete(userDTO);
	}
	
}
