package com.sikon.service.coupon;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Coupon;


public interface CouponDao{
	
	//쿠폰생성
	public void insertCoupon(Coupon coupon) throws Exception;

	//쿠폰발급
	public void issueCoupon(Coupon coupon) throws Exception;
	
	//쿠폰 리스트
	public List<Coupon> getCouponList(Search search) throws Exception;
	
	//쿠폰 개수
	public int getTotalCount(Search search) throws Exception ;
	
	//쿠폰검색
	public List<Coupon> findCoupon() throws Exception;
	
	//발급쿠폰 리스트
	public List<Coupon> getIssuedCouponList(Search search) throws Exception ;
		
	//발급쿠폰 개수
	public int getIssuedTotalCount(Search search) throws Exception ;
	
	//발급쿠폰 검색
	public Coupon findIssuedCoupon(int issueNo) throws Exception;
	
	//마이쿠폰 리스트
	public List<Coupon> getMyCouponList(Search search, String userId) throws Exception ;
		
	//마이쿠폰 개수
	public int getMyCouponCount(String userId) throws Exception;
	
	//마이쿠폰 검색
	public List<Coupon> findMyCoupon(String userId) throws Exception;
				
	//발급쿠폰 상태변경
	public void updateIssueStatus(Coupon coupon) throws Exception;
	
	//쿠폰삭제
	public void deleteCoupon(int couponNo) throws Exception;
}