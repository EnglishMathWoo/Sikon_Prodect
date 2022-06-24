package com.sikon.service.point;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Point;


public interface PointDao {
	
	// 포인트 추가
	public void addPoint(Point point) throws Exception ;
	
	// 포인트 가져오기
	public Point getPoint(int pointNo) throws Exception ;
	
	//포인트 변경
	public void updateHoldPoint(int totalpoint, String userId) throws Exception ;
	
	//포인트 목록 가져오기
	public List getPointList(Search search, String userId) throws Exception;
	
	//포인트 목록 수
	public int pointTotalCount(Search search, String userId) throws Exception;

	
}