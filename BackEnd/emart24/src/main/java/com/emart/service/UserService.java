package com.emart.service;

import com.emart.domain.UserDTO;

public interface UserService {

	// 회원 가입
	int register(UserDTO userDTO) throws Exception;

	// 아이디 중복 체크
	int idOverlap(UserDTO userDTO) throws Exception;

	// 로그인
	int login(UserDTO userDTO) throws Exception;

	// 계정 삭제
	int remove(UserDTO userDTO) throws Exception;

}