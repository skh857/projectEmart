package com.orange.goods.dao;

import java.util.List;

import com.orange.goods.domain.GoodsDTO;

public interface GoodsDAO {
    void insertGoods(GoodsDTO goodsDTO);  // 상품 추가
    
    List<GoodsDTO> selectAllGoods();  // 모든 상품 조회
    
    GoodsDTO selectGoodsByNo(int g_no);  // 상품 번호로 조회
    
    void updateGoods(GoodsDTO goodsDTO);  // 상품 정보 업데이트
    
    void deleteGoods(int g_no);  // 상품 삭제
    
}