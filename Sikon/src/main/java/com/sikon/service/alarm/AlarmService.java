package com.sikon.service.alarm;

import com.sikon.common.Search;
import com.sikon.service.domain.Alarm;

import java.util.Map;

public interface AlarmService {
	
	//알람생성
	public void addAlarm(Alarm Alarm) throws Exception;
	
	//알람개수
	public int getAlarmCount(String userId) throws Exception;
	
	//알람List
	public Map<String , Object > getAlarmList(Search search) throws Exception;
	
	//알람삭제
	public void deleteAlarm(String userId) throws Exception;
		
}