package com.sikon.service.user.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.domain.User;
import com.sikon.service.user.UserDao;


//==> 회원관리 DAO CRUD 구현
@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao{
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	///Constructor
	public UserDaoImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addUser(User user, Map map) throws Exception {
		System.out.println("map="+map);
		sqlSession.insert("UserMapper.addUser", user);
		sqlSession.insert("UserMapper.addLicense", map.get("list"));
		sqlSession.insert("UserMapper.addCareer", map.get("list2"));
	}
	
	// id 중복체크
	public int checkId(String userId) throws Exception {
		return sqlSession.selectOne("UserMapper.checkId", userId);
	}
		
	public User getUser(String userId) throws Exception {
		System.out.println("userId="+userId);
		return sqlSession.selectOne("UserMapper.getUser", userId);
	}
	
	public List getUCL(String userId) throws Exception {
		System.out.println("userId="+userId);
		return sqlSession.selectList("UserMapper.getUCL", userId);
	}
	
	public User findUserId(String userNickname) throws Exception {
		return sqlSession.selectOne("UserMapper.findUserId", userNickname);
	}
	
	public void updateUser(User user) throws Exception {
	//	Career career = new Career();
	//	License license = new License();
	//	System.out.println("map="+map);
		sqlSession.update("UserMapper.updateUser", user);
		
		
	}	
	public void updateLicense(List license, String userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", license);
		map.put("userId", userId);
		sqlSession.update("UserMapper.updateLicense", map);
		}
	public void updateCareer(List career, String userId) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", career);
		map.put("userId", userId);
		sqlSession.update("UserMapper.updateCareer", map);
	}
	//	Map map = new HashMap();
//		map.put("license", license);
//		map.put("career", career);
//		map.put("user", user);
		

	public List<User> getUserList(Search search) throws Exception {
		return sqlSession.selectList("UserMapper.getUserList", search);
	}
	
	public void deleteUser(User user) throws Exception {
		 sqlSession.delete("UserMapper.deleteUser", user);
	}

	// 게시판 Page 처리를 위한 전체 Row(totalCount)  return
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("UserMapper.getTotalCount", search);
	}
}