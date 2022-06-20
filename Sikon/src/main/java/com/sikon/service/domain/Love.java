package com.sikon.service.domain;

public class Love {
	
	
	private int loveNo;
	private String userNickname;
	private String userId;
	private User user;
	private int loveCheck;
	private int loveIncrease;
	private Cook cook;
	
	
	public int getLoveNo() {
		return loveNo;
	}
	public void setLoveNo(int loveNo) {
		this.loveNo = loveNo;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getLoveCheck() {
		return loveCheck;
	}
	public void setLoveCheck(int loveCheck) {
		this.loveCheck = loveCheck;
	}
	public int getLoveIncrease() {
		return loveIncrease;
	}
	public void setLoveIncrease(int loveIncrease) {
		this.loveIncrease = loveIncrease;
	}
	public Cook getCook() {
		return cook;
	}
	public void setCook(Cook cook) {
		this.cook = cook;
	}
	@Override
	public String toString() {
		return "Love [loveNo=" + loveNo + ", userNickname=" + userNickname + ", userId=" + userId + ", user=" + user
				+ ", loveCheck=" + loveCheck + ", loveIncrease=" + loveIncrease + ", cook=" + cook + "]";
	}
	
	

	

}
