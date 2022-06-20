package com.sikon.service.alarm;

import com.sikon.common.Search;
import com.sikon.service.domain.Alarm;

import java.util.Map;


public interface AlarmService {
	
	//알람생성
	public void addAlarm(Alarm Alarm) throws Exception;
	
	//알람개수
	public int getAlarmCount(String userId) throws Exception;
	
	//알람리스트
	public Map<String , Object> getAlarmList(Search search, String userId) throws Exception;

	//알람상태 변경
	public void updateAlarmStatus(Alarm alarm) throws Exception;
	
	//미확인 알람 개수
	public int getUncheckedAlarm(String userId) throws Exception;
		
}