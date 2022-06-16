package com.sikon.service.love;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Love;


public interface LoveDao {

	
	public void addLove(String userNickname,String userId) throws Exception;
	

	public List getLoveList(Search search,String userId) throws Exception;


	public void deleteLove(String userNickname,String userId) throws Exception;


	public int getTotalCount(Search search,String userId) throws Exception ;
	
	
	public int loveCheck(String userNickname,String userId) throws Exception;
	

	
}