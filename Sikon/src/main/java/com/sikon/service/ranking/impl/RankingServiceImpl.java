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
	//레시피 뷰 날짜 저장
	public void addRecipeView(int recipeNo) throws Exception {
		rankingDao.insertRecipeView(recipeNo);
	}
	
	//레시피 리스트 조회
	public Map<String, Object> getRecipeList(Search search) throws Exception {
		System.out.println("search=" + search);
		List<Recipe> list = rankingDao.getRecipeList(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		System.out.println("list=" + list);

		return map;
	}
	
	//구매 날짜 저장
	public void addPurchase(int prodNo, String serialNo) throws Exception {
		rankingDao.insertPurchase(prodNo, serialNo);
	}
	
	//구매 날짜 삭제
	public void deletePurchase(int prodNo, int tranNo) throws Exception{
		rankingDao.deletePurchase(prodNo, tranNo);
	}
	
	// 판매 랭킹 조회
	public Map<String, Object> getProductList(Search search) throws Exception {
		System.out.println("search=" + search);
		List<Product> list = rankingDao.getProductList(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		System.out.println("list=" + list);

		return map;
	}
	
	//즐겨찾는 멘토 날짜 저장
	public void addLoveMentor(String userNickname, String userId) throws Exception{
		rankingDao.insertLoveMentor(userNickname, userId);
	}
	
	//즐겨찾는 멘토 날짜 삭제
	public void deleteLoveMentor(String userNickname, String userId) throws Exception{
		rankingDao.deleteLoveMentor(userNickname, userId);
	}
	
	// 즐겨찾기 리스트 조회
	public Map<String, Object> getLoveList(Search search) throws Exception {
		System.out.println("search=" + search);
		List<Love> list = rankingDao.getLoveList(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		System.out.println("list=" + list);

		return map;
	}
	
}