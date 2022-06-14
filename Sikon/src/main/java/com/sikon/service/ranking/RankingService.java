package com.sikon.service.ranking;

import com.sikon.common.Search;

import java.util.List;
import java.util.Map;

public interface RankingService {
	
	//레시피 뷰 날짜 저장
	public void addRecipeView(int recipeNo) throws Exception;
	
	// 레시피 리스트 조회
	public Map<String, Object> getRecipeList(Search search) throws Exception;
	
	// 쿠킹클래스 리스트 조회
	public Map<String, Object> getCookList(Search search) throws Exception;
			
}