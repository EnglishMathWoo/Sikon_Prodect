package com.sikon.service.wish.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.service.domain.Cart;
import com.sikon.service.domain.Wish;
import com.sikon.service.wish.WishDao;


@Repository("wishDaoImpl")
public class WishDaoImpl implements WishDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public WishDaoImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addWish(Wish wish) throws Exception {
		sqlSession.insert("WishMapper.addWish", wish);
	}

	@Override
	public List<Wish> getWish(String userId) throws Exception {
		
		return sqlSession.selectList("WishMapper.getWish", userId);
	}

	@Override
	public void deleteWish(int wishNo) throws Exception {
		sqlSession.delete("WishMapper.deleteWish",wishNo);
	}

	@Override
	public void updateWish(Wish wish) throws Exception {
		

		
		sqlSession.update("WishMapper.updateWish",wish);
	}
	
	@Override
	public Wish getWishList(int wishNo) throws Exception {
		return sqlSession.selectOne("WishMapper.getWishList", wishNo);
	}

}