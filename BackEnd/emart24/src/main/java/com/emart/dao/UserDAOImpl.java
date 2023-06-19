package com.emart.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.emart.domain.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession session;
	
	String namespace = "com.emart.dao.UserMapper.";
	
	// 회원 가입
	@Override
	public int register(UserDTO userDTO) throws Exception {
		return session.insert(namespace + "register", userDTO);
	}

	// 아이디 중복 체크
	@Override
	public int idOverlap(UserDTO userDTO) throws Exception {
		return session.selectOne(namespace + "idOverlap", userDTO);
	}
	
	// 로그인
	@Override
	public int login(UserDTO userDTO) throws Exception {
		return session.selectOne(namespace + "login", userDTO);
	}

	// 계정 삭제
	@Override
	public int delete(UserDTO userDTO) throws Exception {
		return session.delete(namespace + "delete", userDTO);
	}
	
}
