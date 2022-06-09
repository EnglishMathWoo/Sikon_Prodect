package com.sikon.service.domain;

import java.sql.Date;

public class Alarm {
 
	private int alarmNo;
	private String alarmTarget;
    private String alarmContent;
    private String alarmStatus;
    private Date alarmDate;
	
     
	
	public int getAlarmNo() {
		return alarmNo;
	}




	public void setAlarmNo(int alarmNo) {
		this.alarmNo = alarmNo;
	}




	public String getAlarmTarget() {
		return alarmTarget;
	}




	public void setAlarmTarget(String alarmTarget) {
		this.alarmTarget = alarmTarget;
	}




	public String getAlarmContent() {
		return alarmContent;
	}




	public void setAlarmContent(String alarmContent) {
		this.alarmContent = alarmContent;
	}




	public String getAlarmStatus() {
		return alarmStatus;
	}




	public void setAlarmStatus(String alarmStatus) {
		this.alarmStatus = alarmStatus;
	}




	public Date getAlarmDate() {
		return alarmDate;
	}




	public void setAlarmDate(Date alarmDate) {
		this.alarmDate = alarmDate;
	}




	public String toString() {
		return "alarm : [alarmTarget]" + alarmTarget +" [alarmContent]" + alarmContent;
	}
    
}