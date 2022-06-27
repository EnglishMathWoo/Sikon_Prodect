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

		sqlSession.insert("ReviewMapper.addReview", review);
	}

	public List<Review> getReviewList(Search search, String category, int textNo) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("category", category);
		map.put("textNo", textNo);

		return sqlSession.selectList("ReviewMapper.getReviewList", map);
	}

	public void updateReview(Review review) throws Exception {

		sqlSession.update("ReviewMapper.updateReview", review);

	}

	public void deleteReview(int reviewNo) throws Exception {

		sqlSession.delete("ReviewMapper.deleteReview", reviewNo);

	}

	public int getTotalCount(Search search, String category, int textNo) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("category", category);
		map.put("textNo", textNo);
		
		return sqlSession.selectOne("ReviewMapper.getTotalCount", map);
	}

	public void updateStatus(int textNo,String category) throws Exception {
		
		if(category.equals("PRD")) {
			sqlSession.update("ReviewMapper.updatePurchaseStatus", textNo);		

		}else {
			sqlSession.update("ReviewMapper.updateApplyStatus", textNo);		

		}
	}

	public List<Review> getMyReviewList(Search search, String writerNickname) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("writerNickname", writerNickname);

		return sqlSession.selectList("ReviewMapper.getMyReviewList", map);
	}

	public int getTotalMyCount(Search search, String writerNickname) throws Exception {

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("writerNickname", writerNickname);
		
		return sqlSession.selectOne("ReviewMapper.getTotalMyCount", map);
	}


	public Review getReview(int reviewNo) throws Exception {
		return sqlSession.selectOne("ReviewMapper.getReview", reviewNo);
		
	}

	public void updateReviewNum(int count, int recipeNo) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("count", count);
		map.put("recipeNo", recipeNo);
		sqlSession.insert("ReviewMapper.updateReviewNum", map);
		
	}

	public int countReviewNum(int textNo,String category) throws Exception{
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("textNo", textNo);
		map.put("category", category);
		
		return sqlSession.selectOne("ReviewMapper.getReviewCount", map);
	}
	

}