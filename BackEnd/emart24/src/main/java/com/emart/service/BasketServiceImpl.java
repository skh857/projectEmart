package com.emart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.emart.dao.BasketDAO;
import com.emart.domain.BasketDTO;

@Service
public class BasketServiceImpl implements BasketService {

	@Autowired
	BasketDAO basketDAO;
	
	// 장바구니에 상품 추가
	@Override
	public int insertBasket(BasketDTO basketDTO) throws Exception {
		return basketDAO.insertBasket(basketDTO);
	}
	
	// 장바구니 출력
	@Override
	public List<BasketDTO> selectAllBasketByUser(String id) throws Exception {
		return basketDAO.selectAllBasketByUser(id);
	}

	// 장바구니 내 상품 확인
	@Override
	public int selectBasket(BasketDTO basketDTO) throws Exception {
		return basketDAO.selectBasket(basketDTO);
	}

	// 상품 중복 추가
	@Override
	public int duplicateAdd(BasketDTO basketDTO) throws Exception {
		return basketDAO.duplicateAdd(basketDTO);
	}
}
