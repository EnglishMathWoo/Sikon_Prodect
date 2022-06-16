package com.sikon.service.love;

import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Love;


public interface LoveService {

	
	public void addLove(String userNickname,String userId) throws Exception;

	
	public Map<String, Object> getLoveList(Search search,String userId) throws Exception;

	
	public void deleteLove(String userNickname,String userId) throws Exception;
	
	public int loveCheck(String userNickname,String userId) throws Exception;
	


}
