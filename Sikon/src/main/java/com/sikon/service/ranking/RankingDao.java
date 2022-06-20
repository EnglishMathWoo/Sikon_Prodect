package com.sikon.service.ranking;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Love;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Recipe;


public interface RankingDao{
	
	//레시피 조회날짜 등록
	public void insertRecipeView(int recipeNo) throws Exception;
	
	//레시피 랭킹 조회
	public List<Recipe> getRecipeList(Search search) throws Exception;
	
	//스토어 구매날짜 등록
	public void insertPurchase(int prodNo, String serialNo) throws Exception;
	
	//스토어 구매날짜 삭제
	public void deletePurchase(int prodNo, String serialNo) throws Exception;
	
	//스토어 랭킹 조회
	public List<Product> getProductList(Search search) throws Exception;
	
	//쿠킹멘토 즐겨찾기 날짜 등록
	public void insertLoveMentor(String userNickname, String userId) throws Exception;
	
	//쿠킹멘토 즐겨찾기 날짜 삭제
	public void deleteLoveMentor(String userNickname, String userId) throws Exception;
	
	//쿠킹멘토 랭킹 리스트
	public List<Love> getLoveList(Search search) throws Exception;
		
}