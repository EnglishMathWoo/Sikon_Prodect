package com.sikon.service.alarm;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Alarm;


public interface AlarmDao{
	
	//알람생성
	public void insertAlarm(Alarm alarm) throws Exception;
	
	//알람개수
	public int getAlarmCount(String userId) throws Exception;
	
	//알람리스트
	public List<Alarm> getAlarmList(Search search, String userId) throws Exception;
	
	//알람상태 변경
	public void updateAlarmStatus(Alarm alarm) throws Exception;
	
	//미확인 알람개수
	public int getUncheckedAlarm(String userId) throws Exception;
	
}