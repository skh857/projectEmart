package com.orange.goods.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.orange.goods.dao.GoodsDAO;
import com.orange.goods.domain.GoodsDTO;

@Service
public class GoodsServiceImpl implements GoodsService {

    @Autowired
    GoodsDAO goodsDAO; // GoodsDAO와 연결되는 DAO 인터페이스
    
    @Override
    public void insertGoods(GoodsDTO goodsDTO)throws Exception {
        goodsDAO.insertGoods(goodsDTO); // DAO를 통해 상품을 추가
    }

    @Override
    public List<GoodsDTO> selectAllGoods() throws Exception{
        return goodsDAO.selectAllGoods(); // DAO를 통해 모든 상품을 조회
    }

    @Override
    public GoodsDTO selectGoods(int g_no) throws Exception{
        return goodsDAO.selectGoods(g_no); // DAO를 통해 상품 번호로 상품 정보를 조회
    }

    @Override
    public void updateGoods(GoodsDTO goodsDTO) throws Exception{
        goodsDAO.updateGoods(goodsDTO); // DAO를 통해 상품 정보를 업데이트
    }

    @Override
    public void deleteGoods(int g_no) throws Exception{
        goodsDAO.deleteGoods(g_no); // DAO를 통해 상품을 삭제
    }
}