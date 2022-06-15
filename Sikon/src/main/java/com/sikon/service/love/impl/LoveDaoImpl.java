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
	public void addLove(Love love) throws Exception {
		System.out.println("love="+love);
		sqlSession.insert("LoveMapper.addLove", love);
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

	public void deleteLove(int loveNo) throws Exception {
		System.out.println("loveNo="+loveNo);
		sqlSession.delete("LoveMapper.deleteLove", loveNo);
	}

	public int getTotalCount(Search search, String userId) throws Exception {
		System.out.println("userid="+userId+"search="+search);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("search", search);
		map.put("userId", userId);
		return sqlSession.selectOne("LoveMapper.getTotalCount", map);

	}

}