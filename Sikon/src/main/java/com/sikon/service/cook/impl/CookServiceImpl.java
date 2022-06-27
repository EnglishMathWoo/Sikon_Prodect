package com.sikon.service.cook.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sikon.common.Search;
import com.sikon.service.cook.CookDao;
import com.sikon.service.cook.CookService;
import com.sikon.service.domain.Cook;
import com.sikon.service.recipe.RecipeDao;;




@Service("cookServiceImpl")
public class CookServiceImpl implements CookService{
	

	@Autowired
	@Qualifier("cookDaoImpl")
	private CookDao cookDao;
	public void setCookDao(CookDao cookDao) {
		this.cookDao = cookDao;
	}
	

	@Autowired
	@Qualifier("recipeDaoImpl")
	private RecipeDao recipeDao;

	public void setRecipeDao(RecipeDao recipeDao) {
		this.recipeDao = recipeDao;
	}
	
	///Constructor
	public CookServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addCook(Cook cook) throws Exception {
		
		cookDao.addCook(cook);
	}

	public Cook getCook(int cookNo) throws Exception {
		
		Cook cook = cookDao.getCook(cookNo);
		System.out.println(cook);
		return cook;
	}

	public Map<String, Object> getCookList(Search search) throws Exception {
		
		List<Cook> list= cookDao.getCookList(search);
		int totalCount = cookDao.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}

	public void updateCook(Cook cook) throws Exception {
		cookDao.updateCook(cook);
	}
	
	public void deleteCook(int cookNo) throws Exception {
		cookDao.deleteCook(cookNo);
	}
	

	public Map<String, Object> listMyCook(Search search, String userNickname) throws Exception {
	

		List<Cook> list = cookDao.listMyCook(search, userNickname);
		int totalCount = cookDao.getTotalMyCount(search, userNickname);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("totalCount", new Integer(totalCount));


		return map;
	}


		
}