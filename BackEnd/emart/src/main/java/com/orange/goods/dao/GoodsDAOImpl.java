package com.orange.goods.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.orange.goods.domain.GoodsDTO;

@Repository
public class GoodsDAOImpl implements GoodsDAO {

    String NAMESPACE = "com.orange.goods.mapper.GoodsMapper.";
    
    @Autowired
    private SqlSession sqlSession;
    
    @Override
    public void insertGoods(GoodsDTO goodsDTO) {
        sqlSession.insert(NAMESPACE + "insertGoods", goodsDTO); // 상품을 추가하는 SQL 실행
    }

    @Override
    public List<GoodsDTO> selectAllGoods() {
        return sqlSession.selectList(NAMESPACE + "selectAllGoods"); // 모든 상품을 조회하는 SQL 실행
    }

    @Override
    public GoodsDTO selectGoodsByNo(int g_no) {
        return sqlSession.selectOne(NAMESPACE + "selectGoodsByNo", g_no); // 상품 번호로 상품을 조회하는 SQL 실행
    }

    @Override
    public void updateGoods(GoodsDTO goodsDTO) {
        sqlSession.update(NAMESPACE + "updateGoods", goodsDTO); // 상품 정보를 업데이트하는 SQL 실행
    }

    @Override
    public void deleteGoods(int g_no) {
        sqlSession.delete(NAMESPACE + "deleteGoods", g_no); // 상품을 삭제하는 SQL 실행
    }
}