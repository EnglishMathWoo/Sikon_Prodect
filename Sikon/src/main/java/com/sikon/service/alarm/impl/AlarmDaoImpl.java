package com.sikon.service.alarm.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.alarm.AlarmDao;
import com.sikon.service.domain.Alarm;


@Repository("alarmDaoImpl")
public class AlarmDaoImpl implements AlarmDao {

	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	/// Constructor
	public AlarmDaoImpl() {
		System.out.println(this.getClass());
	}

	
	/// Method
	//알람생성
	public void insertAlarm(Alarm alarm) throws Exception {
		sqlSession.insert("AlarmMapper.addAlarm", alarm);
	}
	
	//알람개수
	public int getAlarmCount(String userId) throws Exception {
		return sqlSession.selectOne("AlarmMapper.getAlarmCount", userId);
	}
	
	//알람리스트
	public List<Alarm> getAlarmList(Search search, String userId) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("search", search);
		
		return sqlSession.selectList("AlarmMapper.getAlarmList", map);
	}

	//알람개수
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("AlarmMapper.getTotalCount", search);
	}
	
	//알람상태 변경
	public void updateAlarmStatus(Alarm alarm) throws Exception {
		sqlSession.update("AlarmMapper.updateAlarmStatus", alarm);
	}
	
	//미확인 알람개수
	public int getUncheckedAlarm(String userId) throws Exception {
		return sqlSession.selectOne("AlarmMapper.getUncheckedAlarm", userId);
	}
	
}