package com.sikon.service.cook;

import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Apply;
import com.sikon.service.domain.Cook;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.User;


public interface CookDao {

	
	public void addCook(Cook cook) throws Exception;

	public List<Cook> getCookList(Search search) throws Exception;

	public Cook getCook(int cookNo) throws Exception;

	public void updateCook(Cook cook) throws Exception;

	public int getTotalCount(Search search) throws Exception;

	public void deleteCook(int cookNo) throws Exception;

	public int getTotalMyCount(Search search, String userNickname) throws Exception;

	public List<Cook> listMyCook(Search search, String userNickname) throws Exception;
	

}