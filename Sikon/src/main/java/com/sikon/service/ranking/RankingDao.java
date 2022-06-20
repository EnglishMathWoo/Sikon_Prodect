package com.sikon.service.ranking;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Love;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Recipe;


public interface RankingDao{
	
	//레시피 뷰 날짜 저장
	public void insertRecipeView(int recipeNo) throws Exception;
	
	// SELECT LIST
	public List<Recipe> getRecipeList(Search search) throws Exception;
	
	//구매 날짜 저장
	public void insertPurchase(int prodNo, String serialNo) throws Exception;
	
	//구매 날짜 삭제
	public void deletePurchase(int prodNo, String serialNo) throws Exception;
	
	//판매 랭킹 리스트
	public List<Product> getProductList(Search search) throws Exception;
	
	//즐겨찾는 멘토 날짜 저장
	public void insertLoveMentor(String userNickname, String userId) throws Exception;
	
	//즐겨찾는 멘토 날짜 삭제
	public void deleteLoveMentor(String userNickname, String userId) throws Exception;
	
	// SELECT LIST
	public List<Love> getLoveList(Search search) throws Exception;
		
}