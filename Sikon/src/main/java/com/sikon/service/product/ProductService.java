package com.sikon.service.product;


import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Product;


public interface ProductService {
	
	//상품등록
	public void addProduct(Product product) throws Exception;
	
	//상품 정보 가져오기
	public Product getProduct(int prodNo) throws Exception;
	
	//상품 정보 수정
	public void updateProduct(Product product) throws Exception;

	//상품 목록 가져오기
	public Map<String , Object> getProductList(Search search) throws Exception;
	
	//상품명 목록 가져오기
	public Map<String , Object> getProdNames(Search search) throws Exception;


}