package com.sikon.service.love.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sikon.common.Search;
import com.sikon.service.love.LoveDao;
import com.sikon.service.love.LoveService;
import com.sikon.service.domain.Love;;

//책갈피 서비스 구현
@Service("loveServiceImpl")
public class LoveServiceImpl implements LoveService {

	/// Field
	@Autowired
	@Qualifier("loveDaoImpl")
	private LoveDao loveDao;

	public void setLoveDao(LoveDao loveDao) {
		this.loveDao = loveDao;
	}

	/// Constructor
	public LoveServiceImpl() {
		System.out.println(this.getClass());
	}

	/// Method
	public void addLove(String userNickname,String userId) throws Exception {
		System.out.println("userNickname=" + userNickname);
		System.out.println("userId=" + userId);
		loveDao.addLove(userNickname,userId);
	}

	public Map<String, Object> getLoveList(Search search, String userId) throws Exception {
		System.out.println("userid=" + userId + "search=" + search);

		List<Love> list = loveDao.getLoveList(search, userId);
		int totalCount = loveDao.getTotalCount(search, userId);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("totalCount", new Integer(totalCount));

		System.out.println("list=" + list);
		System.out.println("totalCount=" + totalCount);

		return map;
	}

	public void deleteLove(String userNickname,String userId) throws Exception {
		System.out.println("userNickname=" + userNickname);
		System.out.println("userId=" + userId);
		
		loveDao.deleteLove(userNickname,userId);

	}


	public int loveCheck(String userNickname,String userId) throws Exception{
		return loveDao.loveCheck(userNickname, userId);
	}
	
	



}