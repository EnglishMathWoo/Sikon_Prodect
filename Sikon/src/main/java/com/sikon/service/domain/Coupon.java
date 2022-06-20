package com.sikon.service.domain;

import java.sql.Date;

public class Coupon {
 
	private int couponNo;
	private int issueNo;
    private String couponName;
    private String issueStatus;
    private Date startDate;
    private Date endDate;
	private Date couponRegDate;
    private double discountRate;
    private int discountValue;
    private User couponUser;
    
    
	public int getCouponNo() {
		return couponNo;
	}
	
	public void setCouponNo(int couponNo) {
		this.couponNo = couponNo;
	}
	
	public int getIssueNo() {
		return issueNo;
	}
	
	public void setIssueNo(int issueNo) {
		this.issueNo = issueNo;
	}
	
	public String getIssueStatus() {
		return issueStatus;
	}
	
	public void setIssueStatus(String issueStatus) {
		this.issueStatus = issueStatus;
	}
	
	public Date getEndDate() {
		return endDate;
	}
	
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	
	public Date getStartDate() {
		return startDate;
	}
	
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	
	public Date getCouponRegDate() {
		return couponRegDate;
	}
	
	public void setCouponRegDate(Date couponRegDate) {
		this.couponRegDate = couponRegDate;
	}
	
	public double getDiscountRate() {
		return discountRate;
	}
	
	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}
	
	public int getDiscountValue() {
		return discountValue;
	}
	
	public void setDiscountValue(int discountValue) {
		this.discountValue = discountValue;
	}
	
	public User getCouponUser() {
		return couponUser;
	}
	
	public void setCouponUser(User couponUser) {
		this.couponUser = couponUser;
	}
	
	public String getCouponName() {
		return couponName;
	}
	
	public void setCouponName(String couponName) {
		this.couponName = couponName;
	}
	
	public String toString() {
		return "coupon : [couponNo]" + couponNo + " [issueNo]" + issueNo + " [couponName]" + couponName + " [issueStatus]" + issueStatus + 
				" [startDate]" + startDate + " [endDate]" + endDate + " [couponRegDate]" + couponRegDate + " [discountRate]" + discountRate + 
				" [discountValue]" + discountValue + " [couponUser]" + couponUser;
	}
    
}