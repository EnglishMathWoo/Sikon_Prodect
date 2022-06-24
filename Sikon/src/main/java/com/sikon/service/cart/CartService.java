package com.sikon.service.cart;

import java.util.List;



import com.sikon.service.domain.Cart;

 
public interface CartService {
	
	//장바구니 추가
	public void addCart(Cart cart) throws Exception;
	
	//장바구니 리스트
	public List<Cart> getCartList(String userId) throws Exception;
	
	//장바구니 수량 업데이트
	public void updateCart(Cart cart) throws Exception;
	
	//장바구니에서 구매시 삭제
	public void deleteCart(int cartNo) throws Exception;
		
	//해당 장바구니 가져오기
	public Cart getCart(int cartNo) throws Exception ;
	
}