package com.sikon.service.ranking.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sikon.common.Search;
import com.sikon.service.domain.Love;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Recipe;
import com.sikon.service.ranking.RankingDao;
import com.sikon.service.ranking.RankingService;


@Service("rankingServiceImpl")
public class RankingServiceImpl implements RankingService{
	
	///Field
	@Autowired
	@Qualifier("rankingDaoImpl")
	private RankingDao rankingDao;

	
	/// Constructor
	public RankingServiceImpl() {
		System.out.println(this.getClass());
	}


	///Method
	//레시피 조회날짜 등록
	public void addRecipeView(int recipeNo) throws Exception {
		
		rankingDao.insertRecipeView(recipeNo);
	}
	
	//레시피 랭킹 조회
	public Map<String, Object> getRecipeList(Search search) throws Exception {
		
		List<Recipe> list = rankingDao.getRecipeList(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);

		return map;
	}
	
	//스토어 구매날짜 등록
	public void addPurchase(int prodNo, String serialNo) throws Exception {
		
		rankingDao.insertPurchase(prodNo, serialNo);
	}
	
	//스토어 구매날짜 삭제
	public void deletePurchase(int prodNo, String serialNo) throws Exception{
		
		rankingDao.deletePurchase(prodNo, serialNo);
	}
	
	//스토어 랭킹 조회
	public Map<String, Object> getProductList(Search search) throws Exception {

		List<Product> list = rankingDao.getProductList(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);

		return map;
	}
	
	//쿠킹멘토 즐겨찾기 날짜 등록
	public void addLoveMentor(String userNickname, String userId) throws Exception{
		
		rankingDao.insertLoveMentor(userNickname, userId);
	}
	
	//쿠킹멘토 즐겨찾기 날짜 삭제
	public void deleteLoveMentor(String userNickname, String userId) throws Exception{
		
		rankingDao.deleteLoveMentor(userNickname, userId);
	}
	
	//쿠킹멘토 랭킹 리스트
	public Map<String, Object> getLoveList(Search search) throws Exception {
		
		List<Love> list = rankingDao.getLoveList(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);

		return map;
	}
	
}