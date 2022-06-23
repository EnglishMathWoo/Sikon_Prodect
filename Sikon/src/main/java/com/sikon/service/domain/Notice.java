package com.sikon.service.domain;

import java.sql.Date;

public class Notice {
 
	private int noticeNo;
	private String noticeTitle;
    private String noticeContent;
	private Date noticeDate;

	
	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContent() {
		return noticeContent;
	}

	public void setNoticeContent(String noticeContent) {
		this.noticeContent = noticeContent;
	}

	public Date getNoticeDate() {
		return noticeDate;
	}

	public void setNoticeDate(Date noticeDate) {
		this.noticeDate = noticeDate;
	}

	public String toString() {
		return "notice : [noticeNo]" + noticeNo + " [noticeTitle]" + noticeTitle + " [noticeContent]" + noticeContent + 
				" [noticeFileName]" + " [noticeDate]" + noticeDate;
	}
    
}