package com.sikon.service.domain;

import java.sql.Date;

public class Point {
	
	private int pointNo;
	private String userId;
	private String pointCategory;
	private String pointType;
	private int totalPoint;
	private int pointScore;
	private Date pointRegDate;

	public Point(){
	}

	public int getPointNo() {
		return pointNo;
	}

	public void setPointNo(int pointNo) {
		this.pointNo = pointNo;
	}


	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getTotalPoint() {
		return totalPoint;
	}

	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}

	public int getPointScore() {
		return pointScore;
	}

	public void setPointScore(int pointScore) {
		this.pointScore = pointScore;
	}

	public String getPointType() {
		return pointType;
	}

	public void setPointType(String pointType) {
		this.pointType = pointType;
	}

	public Date getPointRegDate() {
		return pointRegDate;
	}

	public void setPointRegDate(Date pointRegDate) {
		this.pointRegDate = pointRegDate;
	}

	public String getPointCategory() {
		return pointCategory;
	}

	public void setPointCategory(String pointCategory) {
		this.pointCategory = pointCategory;
	}

	@Override
	public String toString() {
		return "Point [pointNo=" + pointNo + ", userId=" + userId + ", pointCategory=" + pointCategory + ", pointType="
				+ pointType + ", totalPoint=" + totalPoint + ", pointScore=" + pointScore + ", pointRegDate="
				+ pointRegDate + "]";
	}


}