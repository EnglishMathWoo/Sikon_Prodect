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
	//��������
	public void insertCoupon(Coupon coupon) throws Exception {
		
		sqlSession.insert("CouponMapper.addCoupon", coupon);
	}
	
	//�����߱�
	public void issueCoupon(Coupon coupon) throws Exception {
		
		sqlSession.insert("CouponHolderMapper.issueCoupon", coupon);
	}
	
	//���� ����Ʈ
	public List<Coupon> getCouponList(Search search) throws Exception {
		
		return sqlSession.selectList("CouponMapper.getCouponList", search);
	}
	
	//���� ����
	public int getTotalCount(Search search) throws Exception {
		
		return sqlSession.selectOne("CouponMapper.getTotalCount", search);
	}
	
	//�����˻�
	public List<Coupon> findCoupon() throws Exception {
		
		return sqlSession.selectList("CouponMapper.findCoupon");
	}
			
	//�߱����� ����Ʈ
	public List<Coupon> getIssuedCouponList(Search search) throws Exception {
		
		return sqlSession.selectList("CouponHolderMapper.getIssuedCouponList", search);
	}
	
	//�߱����� ����
	public int getIssuedTotalCount(Search search) throws Exception {
		
		return sqlSession.selectOne("CouponHolderMapper.getTotalCount", search);
	}
	
	//�߱����� �˻�
	public Coupon findIssuedCoupon(int issueNo) throws Exception {
		
		return sqlSession.selectOne("CouponHolderMapper.findIssuedCoupon", issueNo);
	}

	//�������� ����Ʈ
	public List<Coupon> getMyCouponList(Search search, String userId) throws Exception {
		
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("search", search);
		
		return sqlSession.selectList("CouponHolderMapper.getMyCouponList", map);
	}
	
	//�������� ����
	public int getMyCouponCount(String userId) throws Exception {
	
		return sqlSession.selectOne("CouponHolderMapper.getMyCouponCount", userId);
	}
	
	//�������� �˻�
	public List<Coupon> findMyCoupon(String userId) throws Exception {
		
		return sqlSession.selectList("CouponHolderMapper.findUsableCoupon", userId);
	}

	//�߱����� ���º���
	public void updateIssueStatus(Coupon coupon) throws Exception {
		
		sqlSession.update("CouponHolderMapper.updateIssueStatus", coupon);
	}
	
	//��������
	public void deleteCoupon(int couponNo) throws Exception{
		
		sqlSession.delete("CouponMapper.deleteCoupon", couponNo);
	};
}