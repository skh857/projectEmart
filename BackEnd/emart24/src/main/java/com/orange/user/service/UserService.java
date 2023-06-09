package com.orange.user.service;

import com.orange.user.domain.UserDTO;

public interface UserService {

	int register(UserDTO userDTO) throws Exception;

	int idOverlap(UserDTO userDTO) throws Exception;

	int login(UserDTO userDTO) throws Exception;

	int remove(UserDTO userDTO) throws Exception;

}