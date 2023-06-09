package com.orange.goods.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.orange.goods.domain.GoodsDTO;

@Repository
public class GoodsDAOImpl implements GoodsDAO {

    String namespace = "com.orange.goods.dao.GoodsMapper.";
    
    @Autowired
    private SqlSession session;
    
    @Override
    public void insertGoods(GoodsDTO goodsDTO) throws Exception{
    	session.insert(namespace + "insertGoods", goodsDTO); // 상품을 추가하는 SQL 실행
    }

    @Override
    public List<GoodsDTO> selectAllGoods() throws Exception{
        return session.selectList(namespace + "selectAllGoods"); // 모든 상품을 조회하는 SQL 실행
    }

    @Override
    public GoodsDTO selectGoods(int g_no) throws Exception{
        return session.selectOne(namespace + "selectGoods", g_no); // 상품 번호로 상품을 조회하는 SQL 실행
    }

    @Override
    public void updateGoods(GoodsDTO goodsDTO) throws Exception{
    	session.update(namespace + "updateGoods", goodsDTO); // 상품 정보를 업데이트하는 SQL 실행
    }

    @Override
    public void deleteGoods(int g_no) throws Exception{
    	session.delete(namespace + "deleteGoods", g_no); // 상품을 삭제하는 SQL 실행
    	session.update(namespace + "updateGoodsSequence", g_no);
    }
}