package com.orange.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orange.user.dao.UserDAO;
import com.orange.user.domain.UserDTO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDAO userDAO;
	
	@Override
	public int register(UserDTO userDTO) throws Exception {
		return userDAO.register(userDTO);
	}
	
	@Override
	public int idOverlap(UserDTO userDTO) throws Exception {
		return userDAO.idOverlap(userDTO);
	}
	
	@Override
	public int login(UserDTO userDTO) throws Exception {
		return userDAO.login(userDTO);
	}
	
	@Override
	public int delete(UserDTO userDTO) throws Exception {
		return userDAO.delete(userDTO);
	}
	
}
