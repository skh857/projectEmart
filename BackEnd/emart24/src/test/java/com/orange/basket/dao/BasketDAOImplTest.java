package com.orange.basket.dao;

import static org.junit.Assert.assertTrue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.orange.basket.domain.BasketDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BasketDAOImplTest {

	@Autowired
	private BasketDAO basketDAO;
	
	@Test
	public void testInsertBasket() throws Exception {
		// 장바구니 데이터 생성
		BasketDTO basket1 = new BasketDTO("/img/productimg1.png", "[동원]보성홍차 아이스티", 2000, 1, "green");
		
		basket1.setB_purchase_cnt(1);
		
		int b_purchase_price = basket1.getB_price() * basket1.getB_purchase_cnt();
		
		basket1.setB_purchase_price(b_purchase_price);
		
		// 장바구니 추가
		assertTrue(basketDAO.insertBasket(basket1) == 1);
		System.out.println("장바구니 데이터가 성공적으로 추가되었습니다.");
	}
	
}