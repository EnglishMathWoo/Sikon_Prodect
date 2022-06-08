package com.sikon.service.cook.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.domain.Cook;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.Wish;
import com.sikon.service.cook.CookDao;
import com.sikon.service.domain.User;


//==> 회원관리 DAO CRUD 구현
@Repository("cookDaoImpl")
public class CookDaoImpl implements CookDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public CookDaoImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addCook(Cook cook) throws Exception {
		
		System.out.println("CookDaoImpl: "+cook);
		sqlSession.insert("CookMapper.addCook", cook);
	}

	public Cook getCook(int cookNo) throws Exception {
		return sqlSession.selectOne("CookMapper.getCook", cookNo);
	}
	
	public void updateCook(Cook cook) throws Exception {
		sqlSession.update("CookMapper.updateCook", cook);
	}

	public List<Cook> getCookList(Search search,User metor) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("metor", metor);
		map.put("search", search);
		
		return sqlSession.selectList("CookMapper.getCookList", map);
	}

	// 게시판 Page 처리를 위한 전체 Row(totalCount)  return
	public int getTotalCount(Search search,User metor) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("metor", metor);
		map.put("search", search);	
		return sqlSession.selectOne("CookMapper.getTotalCount", map);
	}
	
	public void deleteCook(int cookNo) throws Exception {
		sqlSession.delete("CookMapper.deleteCook",cookNo);
	}
	
	
	public int getTotalMyCount(Search search, String userNickname) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNickname", userNickname);
		map.put("search", search);
		return sqlSession.selectOne("CookMapper.getTotalMyCount", map);
	}
	
	public List<Cook> listMyCook(Search search, String userNickname) throws Exception {
		System.out.println("search=" + search);
		System.out.println("userNickname=" + userNickname);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNickname", userNickname);
		map.put("search", search);
		return sqlSession.selectList("CookMapper.listMyCook", map);
	}
	
	public List<Cook> lisyMyRecipe(Search search, String userNickname) throws Exception {
		System.out.println("search=" + search);
		System.out.println("userNickname=" + userNickname);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNickname", userNickname);
		map.put("search", search);
		return sqlSession.selectList("CookMapper.lisyMyRecipe", map);
	}
	
	public int getTotalRCount(Search search, String userNickname) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userNickname", userNickname);
		map.put("search", search);
		return sqlSession.selectOne("CookMapper.getTotalRCount", map);
	}	
	
	
}