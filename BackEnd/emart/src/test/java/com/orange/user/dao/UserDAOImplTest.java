package com.orange.user.dao;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.orange.user.domain.UserDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations= {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class UserDAOImplTest {

	@Autowired
	private UserDAO dao;
	
	@Test
	public void test() throws Exception {
		
		UserDTO dto = new UserDTO("green", "1234", "김그린", "20200101", "01012345678");
		assertTrue(dao.register(dto) == 1);
		assertTrue(dto.getName() == "김그린");
		
	}

}
