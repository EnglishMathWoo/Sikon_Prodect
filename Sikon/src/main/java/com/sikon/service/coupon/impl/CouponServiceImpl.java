package com.sikon.service.coupon.impl;

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


@Service("couponServiceImpl")
public class CouponServiceImpl implements CouponService{
	
	///Field
	@Autowired
	@Qualifier("couponDaoImpl")
	private CouponDao couponDao;

	
	/// Constructor
	public CouponServiceImpl() {
		System.out.println(this.getClass());
	}


	///Method
	//쿠폰생성
	public void addCoupon( Coupon coupon ) throws Exception {
		
		couponDao.insertCoupon(coupon);
	}
	
	//쿠폰발급
	public void issueCoupon( Coupon coupon ) throws Exception{
		
		couponDao.issueCoupon(coupon);
	};
	
	//쿠폰리스트
	public Map<String , Object > getCouponList( Search search ) throws Exception {
		
		List<Coupon> list= couponDao.getCouponList(search);
		int totalCount = couponDao.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}
	
	//발급쿠폰리스트
	public Map<String , Object > getIssuedCouponList( Search search ) throws Exception {
		
		List<Coupon> list= couponDao.getIssuedCouponList(search);
		int totalCount = couponDao.getIssuedTotalCount(search);
		
		checkExpiry(list);
				
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}
	
	//마이쿠폰리스트 
	public Map<String , Object> getMyCouponList( Search search, String userId ) throws Exception  {
		
		List<Coupon> list= couponDao.getMyCouponList(search, userId);
		int totalCount = couponDao.getMyCouponCount(userId);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}
	
	//쿠폰검색
	public List<Coupon> getCoupon() throws Exception {
		
		List<Coupon> couponList = couponDao.findCoupon();
		
		return couponList;
	}
	
	//발급쿠폰 검색
	public Coupon getIssuedCoupon( int issueNo ) throws Exception {
		
		Coupon issuedCoupon = couponDao.findIssuedCoupon(issueNo);
		
		return issuedCoupon;
	}
	
	//마이쿠폰 검색
	public List<Coupon> getMyCoupon( String userId ) throws Exception {
		
		List<Coupon> couponList = couponDao.findMyCoupon(userId);
	
		return couponList;
	}
		
	//발급쿠폰 상태변경
	public void updateIssueStatus( Coupon coupon ) throws Exception{
		
		couponDao.updateIssueStatus(coupon);
	}
	
	//쿠폰삭제
	public void deleteCoupon( int couponNo ) throws Exception{
		
		couponDao.deleteCoupon(couponNo);
	};
	
	//발급쿠폰 만료계산
	public void checkExpiry( List<Coupon> list ) throws Exception {
		
		Date currentDate = new Date();
		
		for(int i=0; i<list.size(); i++) {
			if(currentDate.after(list.get(i).getEndDate())) {
				list.get(i).setIssueStatus("004");
				list.set(i, list.get(i));
				updateIssueStatus(list.get(i));
			}
		}
	}

}