package com.sikon.service.alarm;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Alarm;


public interface AlarmDao{
	
	//알름생성
	public void insertAlarm(Alarm alarm) throws Exception;
	
	//알람검색
	public Alarm getAlarm(String userId) throws Exception ;
	
	//알람개수
	public int getAlarmCount(String userId) throws Exception;
	
	//알람리스트
	public List<Alarm> getAlarmList(Search search, String userId) throws Exception;
	
	public void deleteAlarm(String userId) throws Exception;
	
	public void updateAlarmStatus(Alarm alarm) throws Exception;
	
	public int getStatusCount(String userId) throws Exception;
	
}