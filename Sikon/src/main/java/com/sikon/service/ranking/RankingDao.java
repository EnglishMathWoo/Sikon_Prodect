package com.sikon.service.ranking;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.User;


public interface RankingDao{
	
	//레시피 뷰 날짜 저장
	public void insertRecipeView(int recipeNo) throws Exception;
	
	// SELECT LIST
	public List<Recipe> getRecipeList(Search search) throws Exception;
	
	//즐겨찾는 멘토 날짜 저장
	public void insertLoveMentor(String userNickname, String userId) throws Exception;
	
	//즐겨찾는 멘토 날짜 삭제
	public void deleteLoveMentor(String userNickname, String userId) throws Exception;
		
}