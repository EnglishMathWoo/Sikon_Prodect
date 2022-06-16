package com.sikon.service.love.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.love.LoveDao;
import com.sikon.service.domain.Love;

//책갈피 DAO CRUD 구현
@Repository("loveDaoImpl")
public class LoveDaoImpl implements LoveDao {

	/// Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	/// Constructor
	public LoveDaoImpl() {
		System.out.println(this.getClass());
	}

	/// Method
	public void addLove(String userNickname,String userId) throws Exception {
		System.out.println("userNickname="+userNickname);
		System.out.println("userId="+userId);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNickname", userNickname);
		map.put("userId", userId);
		sqlSession.insert("LoveMapper.addLove", map);
	}


	public List getLoveList(Search search, String userId) throws Exception {
		
		System.out.println("userid="+userId+"search="+search);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("userId", userId);

		List list = sqlSession.selectList("LoveMapper.getLoveList", map);
		System.out.println("list=" + list);
		return list;
	}

	public void deleteLove(String userNickname,String userId) throws Exception {
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("userNickname", userNickname);
		System.out.println("userNickname="+userNickname);
		System.out.println("userId="+userId);
		sqlSession.delete("LoveMapper.deleteLove", map);
	}

	public int getTotalCount(Search search, String userId) throws Exception {
		System.out.println("userid="+userId+"search="+search);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("userId", userId);
		return sqlSession.selectOne("LoveMapper.getTotalCount", map);

	}
	
	@Override
	public int loveCheck(String userNickname,String userId) throws Exception{
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("userNickname", userNickname);
		return sqlSession.selectOne("LoveMapper.loveCheck", map);
	}
	


}