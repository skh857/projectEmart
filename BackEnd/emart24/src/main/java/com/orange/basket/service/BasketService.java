package com.orange.basket.service;

import java.util.List;

import com.orange.basket.domain.BasketDTO;

public interface BasketService {

	int deleteAllBasket(int b_no) throws Exception;

	int deleteBasket(int b_no) throws Exception;

	int updateBasketSequence(int b_no) throws Exception;

	int insertBasket(BasketDTO basketDTO) throws Exception;	// 장바구니에 상품 추가

	List<BasketDTO> selectAllBasketByUser(String id) throws Exception;	// 장바구니 출력
	
	int selectBasket(BasketDTO basketDTO) throws Exception;	// 장바구니 내 상품 확인
	
	int duplicateAdd(BasketDTO basketDTO) throws Exception;	// 상품 중복 추가
}