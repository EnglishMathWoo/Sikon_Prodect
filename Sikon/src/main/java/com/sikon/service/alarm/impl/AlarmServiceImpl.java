package com.sikon.service.alarm.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sikon.common.Search;
import com.sikon.service.alarm.AlarmDao;
import com.sikon.service.alarm.AlarmService;
import com.sikon.service.domain.Alarm;

@Service("alarmServiceImpl")
public class AlarmServiceImpl implements AlarmService{
	
	///Field
	@Autowired
	@Qualifier("alarmDaoImpl")
	private AlarmDao alarmDao;

	
	/// Constructor
	public AlarmServiceImpl() {
		System.out.println(this.getClass());
	}


	///Method
	//알람생성
	public void addAlarm(Alarm Alarm) throws Exception {
		alarmDao.insertAlarm(Alarm);
	}

	
	//알람리스트
	public Map<String , Object> getAlarmList(Search search, String userId) throws Exception {
		List<Alarm> list= alarmDao.getAlarmList(search, userId);
		int totalCount = alarmDao.getAlarmCount(userId);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		map.put("totalCount", totalCount);
		
		return map;
	}
	
	//알람개수
	public int getAlarmCount(String userId) throws Exception {
		
		int alarmCount = alarmDao.getAlarmCount(userId);
				
		return alarmCount;
	}
	
	//미확인 알람 개수
	public int getUncheckedAlarm(String userId) throws Exception {
		
		int statusCount = alarmDao.getUncheckedAlarm(userId);
				
		return statusCount;
	}
	
	//알람상태 변경
	public void updateAlarmStatus(Alarm alarm) throws Exception{
		alarmDao.updateAlarmStatus(alarm);
	}

}