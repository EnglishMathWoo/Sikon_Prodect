package com.sikon.service.point.impl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sikon.service.domain.Point;
import com.sikon.service.point.PointDao;
import com.sikon.service.point.PointService;


//==> 회원관리 서비스 구현
@Service("pointServiceImpl")
public class PointServiceImpl implements PointService{
	
	///Field
	@Autowired
	@Qualifier("pointDaoImpl")
	private PointDao pointDao;
	
	public void setPointDao(PointDao pointDao) {
		this.pointDao = pointDao;
	}
	
	///Constructor
	public PointServiceImpl() {
		System.out.println(this.getClass());
	}
	
	///Method
	@Override
	public void addPoint(Point point) throws Exception {
		pointDao.addPoint(point);		
	}


	@Override
	public Point getPoint(int pointNo) throws Exception {
		return pointDao.getPoint(pointNo);
	}
	
	
	public void updateHoldPoint(int totalpoint, String userId) throws Exception {
		pointDao.updateHoldPoint(totalpoint, userId);
	}

}

