package eMart;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.orange.goods.dao.GoodsDAO;
import com.orange.goods.domain.GoodsDTO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class GoodsDAOImplTest {

    @Autowired
    private GoodsDAO goodsDAO;


    @Test
    public void testInsertGoods() {
        // 상품 데이터 생성
        GoodsDTO goods = new GoodsDTO(1, "상품1", 1000, 10, 19, "");

        // 상품 추가
        goodsDAO.insertGoods(goods);
    	System.out.println("상품 데이터가 성공적으로 추가되었습니다.");
    }

    // 다른 테스트 메서드 작성...

}