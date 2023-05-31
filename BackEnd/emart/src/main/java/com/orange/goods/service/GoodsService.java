package com.orange.goods.service;

import java.util.List;

import com.orange.goods.domain.GoodsDTO;

public interface GoodsService {
    void addGoods(GoodsDTO goodsDTO) throws Exception; // 상품 추가
    List<GoodsDTO> getAllGoods() throws Exception; // 모든 상품 조회
    GoodsDTO getGoodsByNo(int g_no) throws Exception; // 상품 번호로 조회
    void updateGoods(GoodsDTO goodsDTO) throws Exception; // 상품 정보 업데이트
    void deleteGoods(int g_no) throws Exception; // 상품 삭제
}