package com.sikon.service.ranking.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sikon.common.Search;
import com.sikon.service.coupon.CouponDao;
import com.sikon.service.coupon.CouponService;
import com.sikon.service.domain.Coupon;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.User;
import com.sikon.service.ranking.RankingDao;
import com.sikon.service.ranking.RankingService;


@Service("rankingServiceImpl")
public class RankingServiceImpl implements RankingService{
	
	///Field
	@Autowired
	@Qualifier("rankingDaoImpl")
	private RankingDao rankingDao;

	
	/// Constructor
	public RankingServiceImpl() {
		System.out.println(this.getClass());
	}


	///Method
	//레시피 뷰 날짜 저장
	public void addRecipeView(int recipeNo) throws Exception {
		rankingDao.insertRecipeView(recipeNo);
	}
	
	//레시피 리스트 조회
	public Map<String, Object> getRecipeList(Search search) throws Exception {
		System.out.println("search=" + search);
		List<Recipe> list = rankingDao.getRecipeList(search);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		System.out.println("list=" + list);

		return map;
	}
	
	//즐겨찾는 멘토 날짜 저장
	public void addLoveMentor(User user) throws Exception{
		rankingDao.insertLoveMentor(user);
	}
	
	//즐겨찾는 멘토 날짜 삭제
	public void deleteLoveMentor(User user) throws Exception{
		rankingDao.deleteLoveMentor(user);
	}
	

}