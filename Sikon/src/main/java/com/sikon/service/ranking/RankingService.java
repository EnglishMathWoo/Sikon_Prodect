package com.sikon.service.ranking;

import com.sikon.common.Search;

import java.util.Map;

public interface RankingService {
	
	//레시피 조회날짜 등록
	public void addRecipeView(int recipeNo) throws Exception;
	
	//레시피 랭킹 리스트
	public Map<String, Object> getRecipeList(Search search) throws Exception;
	
	//스토어 구매날짜 저장
	public void addPurchase(int prodNo, String serialNo) throws Exception;
	
	//스토어 구매날짜 삭제
	public void deletePurchase(int prodNo, String serialNo) throws Exception;
	
	//스토어 랭킹 리스트
	public Map<String, Object> getProductList(Search search) throws Exception;
	
	//쿠킹멘토 즐겨찾기 날짜 저장
	public void addLoveMentor(String userNickname, String userId) throws Exception;
	
	//쿠킹멘토 즐겨찾기 날짜 삭제
	public void deleteLoveMentor(String userNickname, String userId) throws Exception;
	
	//쿠킹멘토 랭킹 리스트
	public Map<String, Object> getLoveList(Search search) throws Exception;
			
}