package com.sikon.service.coupon;

import com.sikon.common.Search;
import com.sikon.service.domain.Coupon;

import java.util.List;
import java.util.Map;

public interface CouponService {
	
	//쿠폰생성
	public void addCoupon(Coupon coupon) throws Exception;
	
	//쿠폰발급
	public void issueCoupon(Coupon coupon) throws Exception;
	
	//생성쿠폰 리스트 
	public Map<String , Object> getCouponList(Search search) throws Exception;
	
	//마이쿠폰 리스트 
	public Map<String , Object> getMyCouponList(Search search, String userId) throws Exception;
		
	//발급쿠폰 리스트 
	public Map<String , Object> getIssuedCouponList(Search search) throws Exception;
	
	//쿠폰검색
	public List<Coupon> getCoupon() throws Exception;
	
	//마이쿠폰 검색
	public List<Coupon> getMyCoupon(String userId) throws Exception;
	
	//발급쿠폰 검색
	public Coupon getIssuedCoupon(int issueNo) throws Exception;
		
	//쿠폰상태변경
	public void updateIssueStatus(Coupon coupon) throws Exception;
	
	//쿠폰삭제
	public void deleteCoupon(int couponNo) throws Exception;
	
	//쿠폰만료 계산
	public void checkExpiry(List<Coupon> list) throws Exception;
		
}