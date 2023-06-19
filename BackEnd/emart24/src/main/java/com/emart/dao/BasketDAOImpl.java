package com.emart.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.emart.domain.BasketDTO;

@Repository
public class BasketDAOImpl implements BasketDAO{

	@Autowired
    private SqlSession sqlSession;

    String namespace = "com.emart.dao.BasketMapper.";

    // 장바구니에 상품 추가
    @Override
    public int insertBasket(BasketDTO basketDTO) throws Exception {
        return sqlSession.insert(namespace + "insertBasket", basketDTO);
    }

    // 장바구니 출력
    @Override
    public List<BasketDTO> selectAllBasketByUser(String id) throws Exception {
        return sqlSession.selectList(namespace + "selectAllBasketByUser", id);
    }

    // 장바구니 내 상품 확인
	@Override
	public int selectBasket(BasketDTO basketDTO) throws Exception {
		return sqlSession.selectOne(namespace + "selectBasket", basketDTO);
	}

	// 상품 중복 추가
	@Override
	public int duplicateAdd(BasketDTO basketDTO) throws Exception {
		return sqlSession.update(namespace + "duplicateAdd", basketDTO);
	}
}