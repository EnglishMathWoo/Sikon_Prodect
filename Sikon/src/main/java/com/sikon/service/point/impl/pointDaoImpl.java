package com.sikon.service.point.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
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
	
		
	public void updateHoldPoint(int totalpoint, String userId) throws Exception {
	
	String totalPoint = totalpoint+"";
	
	Map<String, String> map = new HashMap<String, String>();
	map.put("totalpoint", totalPoint);
	map.put("userId",  userId );
	
	sqlSession.update("PointMapper.updateHoldPoint", map);
	}

	//포인트 목록
	public List getPointList(Search search, String userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("userId",userId);
		return sqlSession.selectList("PointMapper.getPointList",map);
	}

	//포인트 목록 수
	@Override
	public int pointTotalCount(Search search, String userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("userId",userId);
		return sqlSession.selectOne("PointMapper.getTotalCount", map);
	}


}