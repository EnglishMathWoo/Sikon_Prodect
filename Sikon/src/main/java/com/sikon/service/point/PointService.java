package com.sikon.service.point;

import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Point;

 
public interface PointService {
	
	
	public void addPoint(Point point) throws Exception;
	
	public Point getPoint(int pointNo) throws Exception ;
	
	public void updateHoldPoint(int totalpoint, String userId) throws Exception ;
	
	public Map<String, Object> getPointList(Search search, String userId) throws Exception;
	
}