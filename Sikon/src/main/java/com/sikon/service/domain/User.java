package com.sikon.service.domain;

import java.sql.Date;


public class User {
	
	
	private String userId;
	private String userName;
	private String password;
	private String userBirth;
	private String userNickname;
	private String userImage;
	private String addr;
	private String role;
	private String phone;
	private int holdpoint;
	private String mentorApply;
	private String loginPath;
	private Date regDate;
	private Date quitDate;
	private String quitStatus;
	private int loveCount;
	

	
	
	public User(){
	}
	
	public String getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(String userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public int getHoldpoint() {
		return holdpoint;
	}

	public void setHoldpoint(int holdpoint) {
		this.holdpoint = holdpoint;
	}

	public String getMentorApply() {
		return mentorApply;
	}

	public void setMentorApply(String mentorApply) {
		this.mentorApply = mentorApply;
	}

	public Date getQuitDate() {
		return quitDate;
	}

	public Date setQuitDate(Date quitDate) {
		return this.quitDate = quitDate;
	}

	public String getQuitStatus() {
		return quitStatus;
	}

	public String setQuitStatus(String quitStatus) {
		return this.quitStatus = quitStatus;
	}

	public String getUserId() {
		return userId;
	}
	
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getRole() {
		return role;
	}
	
	public String setRole(String role) {
		return this.role = role;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getAddr() {
		return addr;
	}
	
	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	public Date getRegDate() {
		return regDate;
	}
		
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	
	public int getLoveCount() {
		return loveCount;
	}
	
	public void setLoveCount(int loveCount) {
		this.loveCount = loveCount;
	}
	
	public String getLoginPath() {
		return loginPath;
	}
	
	public void setLoginPath(String loginPath) {
		this.loginPath = loginPath;
	}

	
		


	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", userBirth="
				+ userBirth + ", userNickname=" + userNickname + ", userImage=" + userImage + ", addr=" + addr
				+ ", role=" + role + ", phone=" + phone + ", holdpoint=" + holdpoint + ", mentorApply=" + mentorApply
				+ ", regDate=" + regDate + ", quitDate=" + quitDate + ", quitStatus=" + quitStatus + ", loveCount=" + loveCount + "]";
	}
}