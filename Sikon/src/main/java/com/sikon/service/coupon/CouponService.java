package com.sikon.service.coupon;

import com.sikon.common.Search;
import com.sikon.service.domain.Coupon;

import java.util.List;
import java.util.Map;

public interface CouponService {
	
	//��������
	public void addCoupon(Coupon coupon) throws Exception;
	
	//�����߱�
	public void issueCoupon(Coupon coupon) throws Exception;
	
	//�������� ����Ʈ 
	public Map<String , Object> getCouponList(Search search) throws Exception;
	
	//�������� ����Ʈ 
	public Map<String , Object> getMyCouponList(Search search, String userId) throws Exception;
		
	//�߱����� ����Ʈ 
	public Map<String , Object> getIssuedCouponList(Search search) throws Exception;
	
	//�����˻�
	public List<Coupon> getCoupon() throws Exception;
	
	//�������� �˻�
	public List<Coupon> getMyCoupon(String userId) throws Exception;
	
	//�߱����� �˻�
	public Coupon getIssuedCoupon(int issueNo) throws Exception;
		
	//�������º���
	public void updateIssueStatus(Coupon coupon) throws Exception;
	
	//��������
	public void deleteCoupon(int couponNo) throws Exception;
	
	//�������� ���
	public void checkExpiry(List<Coupon> list) throws Exception;
		
}