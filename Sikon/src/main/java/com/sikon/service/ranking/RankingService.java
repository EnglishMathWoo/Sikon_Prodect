package com.sikon.service.ranking;

import com.sikon.common.Search;

import java.util.Map;

public interface RankingService {
	
	//레시피 뷰 날짜 저장
	public void addRecipeView(int recipeNo) throws Exception;
	
	// 레시피 리스트 조회
	public Map<String, Object> getRecipeList(Search search) throws Exception;
	
	//구매 날짜 저장
	public void addPurchase(int prodNo) throws Exception;
	
	//즐겨찾는 멘토 날짜 저장
	public void addLoveMentor(String userNickname, String userId) throws Exception;
	
	//즐겨찾는 멘토 날짜 삭제
	public void deleteLoveMentor(String userNickname, String userId) throws Exception;
	
	// 즐겨찾기 리스트 조회
	public Map<String, Object> getLoveList(Search search) throws Exception;
			
}