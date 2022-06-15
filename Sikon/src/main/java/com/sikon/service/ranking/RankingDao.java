package com.sikon.service.ranking;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Recipe;


public interface RankingDao{
	
	//레시피 뷰 날짜 저장
	public void insertRecipeView(int recipeNo) throws Exception;
	
	// SELECT LIST
	public List<Recipe> getRecipeList(Search search) throws Exception;
	
	// SELECT LIST
	public List<Recipe> getCookList(Search search) throws Exception;
	
	// SELECT ROW Count
	public int getCookCount(Search search) throws Exception;
	
}