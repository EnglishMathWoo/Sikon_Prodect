package com.sikon.service.wish;



import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Cart;
import com.sikon.service.domain.User;
import com.sikon.service.domain.Wish;



public interface WishService {
	
	
	public void addWish(Wish wish) throws Exception;

	public List<Wish> getWish(String userId) throws Exception;

	public void updateWish(Wish wish) throws Exception;

	public void deleteWish(int wishNo) throws Exception;

	public Wish getWishList(int wishNo) throws Exception;
	
}