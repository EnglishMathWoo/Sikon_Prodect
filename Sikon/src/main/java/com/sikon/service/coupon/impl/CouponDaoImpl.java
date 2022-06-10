package com.sikon.service.coupon.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.coupon.CouponDao;
import com.sikon.service.domain.Coupon;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Purchase;
import com.sikon.service.domain.User;
import com.sikon.service.purchase.PurchaseDao;


@Repository("couponDaoImpl")
public class CouponDaoImpl implements CouponDao {

	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/// Constructor
	public CouponDaoImpl() {
		System.out.println(this.getClass());
	}

	/// Method
	/// insertCoupon Method
	public void insertCoupon(Coupon coupon) throws Exception {
		sqlSession.insert("CouponMapper.addCoupon", coupon);
	}
	
	/// insertCoupon Method
	public void issueCoupon(Coupon coupon) throws Exception {
		sqlSession.insert("CouponHolderMapper.issueCoupon", coupon);
	}
	
	/// findCoupon Method
	public List<Coupon> findCoupon() throws Exception {
		return sqlSession.selectList("CouponMapper.findCoupon");
	}
	
	/// findUsableCoupon Method
	public List<Coupon> findMyCoupon(String userId) throws Exception {
		return sqlSession.selectList("CouponHolderMapper.findUsableCoupon", userId);
	}
	
	/// findIssuedCoupon Method
	public Coupon findIssuedCoupon(int issueNo) throws Exception {
		return sqlSession.selectOne("CouponHolderMapper.findIssuedCoupon", issueNo);
	}
	
	public List<Coupon> getCouponList(Search search) throws Exception {
		return sqlSession.selectList("CouponMapper.getCouponList", search);
	}
	
	// ï¿½Ô½ï¿½ï¿½ï¿½ Page Ã³ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½Ã¼ Row(totalCount)  return
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("CouponMapper.getTotalCount", search);
	}
	
	public List<Coupon> getMyCouponList(Search search, String userId) throws Exception {
		Map map = new HashMap();
		
		map.put("userId", userId);
		map.put("search", search);
		
		System.out.println(userId);
		
		return sqlSession.selectList("CouponHolderMapper.getMyCouponList", map);
	}
	
	// ¸¶ÀÌÄíÆù Count
	public int getMyCouponCount(String userId) throws Exception {
	
		
		return sqlSession.selectOne("CouponHolderMapper.getMyCouponCount", userId);
	}
	
	public List<Coupon> getIssuedCouponList(Search search) throws Exception {
		return sqlSession.selectList("CouponHolderMapper.getIssuedCouponList", search);
	}
	
	//¹ß±Þ ÄíÆù Count
	public int getIssuedTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("CouponHolderMapper.getTotalCount", search);
	}
	
	/// updateProduct Method
	public void updateIssueStatus(Coupon coupon) throws Exception {
		sqlSession.update("CouponHolderMapper.updateIssueStatus", coupon);
	}
	
	//ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
	public void deleteCoupon(int couponNo) throws Exception{
		sqlSession.delete("CouponMapper.deleteCoupon", couponNo);
	};
}