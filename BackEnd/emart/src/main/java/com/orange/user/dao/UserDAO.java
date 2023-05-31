package com.orange.user.dao;

import com.orange.user.domain.UserDTO;

public interface UserDAO {

	int register(UserDTO userDTO) throws Exception;

	int idOverlap(UserDTO userDTO) throws Exception;

	int login(UserDTO userDTO) throws Exception;

	int delete(UserDTO userDTO) throws Exception;

}