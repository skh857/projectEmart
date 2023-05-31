package com.orange.user.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.orange.user.domain.UserDTO;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	SqlSession session;
	
	String namespace = "com.orange.user.dao.UserMapper.";
	
	@Override
	public int register(UserDTO userDTO) throws Exception {
		return session.insert(namespace + "register", userDTO);
	}

	@Override
	public int idOverlap(UserDTO userDTO) throws Exception {
		return session.selectOne(namespace + "idOverlap", userDTO);
	}
	
	@Override
	public int login(UserDTO userDTO) throws Exception {
		return session.selectOne(namespace + "login", userDTO);
	}

	@Override
	public int delete(UserDTO userDTO) throws Exception {
		return session.delete(namespace + "delete", userDTO);
	}
	
}
