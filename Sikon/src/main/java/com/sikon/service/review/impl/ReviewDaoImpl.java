package com.sikon.service.review.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.domain.Review;
import com.sikon.service.review.ReviewDao;

//¸®ºä Dao CRUD ±¸Çö
@Repository("reviewDaoImpl")
public class ReviewDaoImpl implements ReviewDao {

	/// Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/// Constructor
	public ReviewDaoImpl() {
		System.out.println(this.getClass());
	}

	/// Method
	public void addReview(Review review) throws Exception {
		System.out.println("review=" + review);
		sqlSession.insert("ReviewMapper.addReview", review);
	}

	public List<Review> getReviewList(Search search, String category, int textNo) throws Exception {
		System.out.println("search=" + search);
		System.out.println("category=" + category);
		System.out.println("textNo" + textNo);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("category", category);
		map.put("textNo", textNo);

		return sqlSession.selectList("ReviewMapper.getReviewList", map);
	}

	public void updateReview(Review review) throws Exception {
		System.out.println("review=" + review);
		sqlSession.update("ReviewMapper.updateReview", review);

	}

	public void deleteReview(int reviewNo) throws Exception {
		System.out.println("review=" + reviewNo);

		sqlSession.delete("ReviewMapper.deleteReview", reviewNo);

	}

	public int getTotalCount(Search search, String category, int textNo) throws Exception {
		System.out.println("search=" + search);
		System.out.println("category=" + category);
		System.out.println("textNo" + textNo);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("category", category);
		map.put("textNo", textNo);
		return sqlSession.selectOne("ReviewMapper.getTotalCount", map);
	}

	@Override
	public void updateStatus(int textNo,String category) throws Exception {
		if(category.equals("PRD")) {
			sqlSession.update("ReviewMapper.updatePurchaseStatus", textNo);		

		}else {
			sqlSession.update("ReviewMapper.updateApplyStatus", textNo);		

		}
	}

	@Override
	public List<Review> getMyReviewList(Search search, String writerNickname) throws Exception {
		System.out.println("search=" + search);
		System.out.println("writerNickname=" + writerNickname);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("writerNickname", writerNickname);

		return sqlSession.selectList("ReviewMapper.getMyReviewList", map);
	}

	@Override
	public int getTotalMyCount(Search search, String writerNickname) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("search=" + search);
		System.out.println("writerNickname=" + writerNickname);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("writerNickname", writerNickname);
		return sqlSession.selectOne("ReviewMapper.getTotalMyCount", map);
	}

	@Override
	public void givePoint(int point, String userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("point", point);
		map.put("userId", userId);
		sqlSession.insert("ReviewMapper.givePoint", map);

		
	}
	

}