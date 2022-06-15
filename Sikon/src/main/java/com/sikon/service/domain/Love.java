package com.sikon.service.domain;

public class Love {
	
	
	private int loveNo;
	private String userNickname;
	private String userId;
	private User user;
	
	
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
	@Override
	public String toString() {
		return "Love [loveNo=" + loveNo + ", userNickname=" + userNickname + ", userId=" + userId + ", user=" + user
				+ "]";
	}
	

}
