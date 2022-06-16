package com.sikon.service.love;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Love;

//책갈피에서 CRUD 추상화/캡슐화한 DAO Interface Definition
public interface LoveDao {

	// INSERT
	public void addLove(String userNickname,String userId) throws Exception;
	
	//SELECT LIST
//	public List<Love> getLoveList(Search search,String userId) throws Exception;
	public List getLoveList(Search search,String userId) throws Exception;

	//DELETE
	public void deleteLove(String userNickname,String userId) throws Exception;

	//SELECT ROW Count
	public int getTotalCount(Search search,String userId) throws Exception ;
	
	
	public int loveCheck(String userNickname,String userId) throws Exception;
	

	
}