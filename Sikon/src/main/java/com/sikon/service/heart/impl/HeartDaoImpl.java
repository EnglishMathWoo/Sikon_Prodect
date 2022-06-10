package com.sikon.service.heart.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.domain.Heart;
import com.sikon.service.domain.Wish;
import com.sikon.service.heart.HeartDao;



@Repository("heartDaoImpl")
public class HeartDaoImpl implements HeartDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public HeartDaoImpl() {
		System.out.println(this.getClass());
	}

	@Override
	public void updateHeart(int cookNo) throws Exception{
	 sqlSession.update("HeartMapper.updateHeart", cookNo);
	}
	
	@Override
	public void updateHeartCancel(int cookNo) throws Exception{
		sqlSession.update("HeartMapper.updateHeartCancel", cookNo);

	}

	
	@Override
	public void insertHeart(int cookNo,String userId) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("cookNo", cookNo);
		sqlSession.insert("HeartMapper.insertHeart", map);
	}
	
	@Override
	public void deleteHeart(int cookNo,String userId)throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("cookNo", cookNo);
		sqlSession.delete("HeartMapper.deleteHeart", map);
	}
	
	@Override
	public int heartCheck(int cookNo,String userId) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("cookNo", cookNo);
		return sqlSession.selectOne("HeartMapper.heartCheck", map);
	}
	
	@Override
	public void updateHeartCheck(int cookNo,String userId) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("cookNo", cookNo);
		sqlSession.update("HeartMapper.updateHeartCheck", map);
		
	}
			
	@Override
	public void updateHeartCheckCancel(int cookNo,String userId) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("cookNo", cookNo);
		sqlSession.update("HeartMapper.updateHeartCheckCancel", map);
	}

	public List<Heart> getHeart(Search search, String userId) throws Exception {
		
		System.out.println("userid="+userId+"search="+search);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("userId", userId);

		List<Heart> list = sqlSession.selectList("HeartMapper.getHeart", map);
		System.out.println("list=" + list);
		return list;
	}
	
	public List<Heart> getHeart2(int cookNo, String userId) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("cookNo", cookNo);
		
		return sqlSession.selectList("HeartMapper.getHeart2", map);
				
	}
	
	public int getTotalCount(Search search, String userId) throws Exception {
		System.out.println("userid="+userId+"search="+search);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("userId", userId);
		return sqlSession.selectOne("HeartMapper.getTotalCount", map);

	}


}