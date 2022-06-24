package com.sikon.service.purchase;

import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Purchase;



public interface PurchaseService {
	
	//상품 구매
	public void addPurchase(Purchase purchase) throws Exception;
	
	//상품 구매내역 가져오기
	public Purchase getPurchase(int tranNo) throws Exception;

	//상품 일괄구매 내역 가져오기
	public List<Purchase> getPurchaseBySerial(String serialNo) throws Exception;
	 
	//상품 구매목록 가져오기
	public Map<String , Object> getPurchaseList(Search search, String buyerId) throws Exception;
	
	//상품 판매목록 가져오기
	public Map<String , Object > getSalesList(Search search) throws Exception;
	
	//상품 구매내역 수정하기
	public void updatePurchase(Purchase purchase) throws Exception;
	
	//상품 배송상태 수정하기
	public void updateDivyStatus(Purchase purchase) throws Exception;
	
	//상품 구매시 재고량 수정하기
	public void updateStock(int purchaseQuantity, int prodNo) throws Exception;
	
	//상품 구매취소시 재고량 수정하기
	public void cancelOrder(int purchaseQuantity, int prodNo) throws Exception;
	
}