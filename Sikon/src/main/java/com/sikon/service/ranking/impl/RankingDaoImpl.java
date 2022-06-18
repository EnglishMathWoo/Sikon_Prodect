package com.sikon.service.ranking.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.domain.Love;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Recipe;
import com.sikon.service.ranking.RankingDao;


@Repository("rankingDaoImpl")
public class RankingDaoImpl implements RankingDao {

	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/// Constructor
	public RankingDaoImpl() {
		System.out.println(this.getClass());
	}

	/// Method
	//레시피 뷰 날짜 저장
	public void insertRecipeView(int recipeNo) throws Exception {
		sqlSession.insert("RankingMapper.addRecipeView", recipeNo);
	}
	
	//레시피 랭킹 리스트
	public List<Recipe> getRecipeList(Search search) throws Exception {
		System.out.println("search=" + search);
		return sqlSession.selectList("RankingMapper.getRecipeList", search);
	}
	
	//구매 날짜 저장
	public void insertPurchase(int prodNo, String serialNo) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prodNo", prodNo);
		map.put("serialNo", serialNo);
		
		sqlSession.insert("RankingMapper.addPurchase", map);
		
	}
	
	//구매 날짜 삭제
	public void deletePurchase(int prodNo, int tranNo) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("prodNo", prodNo);
		map.put("tranNo", tranNo);
		
		sqlSession.delete("RankingMapper.deletePurchase", map);
	}
	
	//판매 랭킹 리스트
	public List<Product> getProductList(Search search) throws Exception {
		System.out.println("search=" + search);
		return sqlSession.selectList("RankingMapper.getProductList", search);
	}
	
	//즐겨찾는 멘토 날짜 저장
	public void insertLoveMentor(String userNickname, String userId) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNickname", userNickname);
		map.put("userId", userId);
		
		sqlSession.insert("RankingMapper.addLoveMentor", map);
	}
	
	//즐겨찾는 멘토 날짜 삭제
	public void deleteLoveMentor(String userNickname, String userId) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNickname", userNickname);
		map.put("userId", userId);
		
		sqlSession.delete("RankingMapper.deleteLoveMentor", map);
	}
		
	//즐겨찾는 멘토 랭킹 리스트
	public List<Love> getLoveList(Search search) throws Exception {
		System.out.println("search=" + search);
		return sqlSession.selectList("RankingMapper.getLoveList", search);
	}
	
}