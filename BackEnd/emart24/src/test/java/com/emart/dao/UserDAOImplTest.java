package com.emart.dao;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.emart.dao.UserDAO;
import com.emart.domain.UserDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserDAOImplTest {

	@Autowired
	private UserDAO dao;
	
	// 유저 Insert 테스트
	@Test
	public void insertTest() throws Exception {
		UserDTO dto = new UserDTO("green", "q1w2e3r4!!", "김그린", "20200101", "01012345678");
		assertTrue(dao.register(dto) == 1);
		assertTrue(dto.getName() == "김그린");
	}
	
	// 계정 삭제 테스트
	@Test
	public void deleteTest() throws Exception {
		UserDTO dto = new UserDTO("green", "q1w2e3r4!!", "김그린", "20200101", "01012345678");
		assertTrue(dao.delete(dto) == 1);
	}

}
