package com.sikon.service.point;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Point;


public interface PointDao {
	
	// INSERT
	public void addPoint(Point point) throws Exception ;
	
	//GET
	public Point getPoint(int pointNo) throws Exception ;
	
	
	public void updateHoldPoint(int totalpoint, String userId) throws Exception ;
	
	//포인트 이동
		public List getPointList(Search search, String userId) throws Exception;
		public int pointTotalCount(Search search, String userId) throws Exception;

	
}