package com.sikon.service.point.impl;

import java.util.HashMap;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.service.domain.Point;
import com.sikon.service.point.PointDao;



@Repository("pointDaoImpl")
public class pointDaoImpl implements PointDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public pointDaoImpl() {
		System.out.println(this.getClass());
	}

	///Method
	@Override
	public void addPoint(Point point) throws Exception {
		sqlSession.insert("PointMapper.addPoint", point);
	}

	@Override
	public Point getPoint(int pointNo) throws Exception {
		return sqlSession.selectOne("PointMapper.getPoint", pointNo);
	}
	
	////////////////////////////////////////////////////////////////////////////////////////////////
		
	public void updateHoldPoint(int totalpoint, String userId) throws Exception {
	
	String totalPoint = totalpoint+"";
	
	System.out.println("///////totalPoint: "+totalPoint);
	
	Map<String, String> map = new HashMap<String, String>();
	map.put("totalpoint", totalPoint);
	map.put("userId",  userId );
	
	sqlSession.update("PointMapper.updateHoldPoint", map);
	}

	////////////////////////////////////////////////////////////////////////////////////////////////
}