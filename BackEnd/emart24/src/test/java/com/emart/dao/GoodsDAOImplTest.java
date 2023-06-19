package com.emart.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.emart.dao.GoodsDAO;
import com.emart.domain.GoodsDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class GoodsDAOImplTest {

    @Autowired
    private GoodsDAO goodsDAO;

    // 상품 추가 테스트
    @Test
    public void goodsInsertTest() throws Exception {
        // 상품 데이터 생성
    	GoodsDTO goods1 = new GoodsDTO("/img/productimg1.png", "[동원]보성홍차 아이스티", 2000);
    	GoodsDTO goods2 = new GoodsDTO("/img/productimg2.png", "[머거본]와사비향 쉐이크 아몬드 180g", 7500);
		GoodsDTO goods3 = new GoodsDTO("/img/productimg3.png", "[로아커]초콜릿크리스피 스트라라치텔라 50g", 2400);
		GoodsDTO goods4 = new GoodsDTO("/img/productimg4.png", "[아임이]두꺼비 플리퍼즈 오곡초코볼 시리얼컵", 3100);

        // 상품 추가
        goodsDAO.insertGoods(goods1);
        goodsDAO.insertGoods(goods2);
        goodsDAO.insertGoods(goods3);
        goodsDAO.insertGoods(goods4);
    	System.out.println("상품 데이터가 성공적으로 추가되었습니다.");
    }
    
    
    
//    @Test
//    public void testDeleteGoods() throws Exception {
//    	
//    	goodsDAO.deleteGoods(8);
//    }

}