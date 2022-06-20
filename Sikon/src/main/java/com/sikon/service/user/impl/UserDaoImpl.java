package com.sikon.service.user.impl;

import java.sql.Date;
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
	public void addKakaoUser(User user) throws Exception {
		System.out.println("user="+user);
		sqlSession.insert("KakaoMapper.addKakaoUser", user);
	}
//	public void addLicense(License license) throws Exception {
//		System.out.println("license="+license);
//		List list = new ArrayList();
//		list.add(license);
//		sqlSession.insert("UserMapper.addLicense", list);
//	}
//	public void addCareer(Career career) throws Exception {
//		System.out.println("career="+career);
//		List list = new ArrayList();
//		list.add(career);
//		sqlSession.insert("UserMapper.addCareer", list);
//	}
	
	// id 중복체크
	public int checkId(String userId) throws Exception {
		return sqlSession.selectOne("UserMapper.checkId", userId);
	}
	// id 중복체크
	public int checkNickname(String userNickname) throws Exception {
		return sqlSession.selectOne("UserMapper.checkNickname", userNickname);
	}
//	// Pw찾기 유효성 검사
//	public int findUserPwCheck(User user)throws Exception {
//		return sqlSession.selectOne("UserMapper.findUserPwCheck", user);
//	}
	// Pw 변경
	public int updateUserPw(String userId, String password)throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
	//	map.put("userName", userName);
		map.put("password", password);
		
		return sqlSession.update("UserMapper.updateUserPw", map);	
	}
	// 쿠킹멘토 승인
	public void changeUserRole(String userId, String role) throws Exception {
		System.out.println("userId="+userId);
		System.out.println("role="+role);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("role", role);
		
		 sqlSession.update("UserMapper.changeUserRole", map);
	}
	// 쿠킹멘토 거절
	public void backUserRole(String userId, String mentorApply) throws Exception {
		System.out.println("userId="+userId);
		System.out.println("mentorApply="+mentorApply);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", userId);
		map.put("mentorApply", mentorApply);
		
		 sqlSession.update("UserMapper.backUserRole", map);
	}
	
	public User getUser(String userId) throws Exception {
		System.out.println("userId="+userId);
		return sqlSession.selectOne("UserMapper.getUser", userId);
	}
	public List getLicense(String userId) throws Exception {
		System.out.println("userId="+userId);
		return sqlSession.selectList("UserMapper.getLicense", userId);
	}
	public List getCareer(String userId) throws Exception {
		System.out.println("userId="+userId);
		return sqlSession.selectList("UserMapper.getCareer", userId);
	}
	
	
	public List getUCL(String userId) throws Exception {
		System.out.println("userId="+userId);
		return sqlSession.selectList("UserMapper.getUCL", userId);
	}
	
	public String findUserId(String userName, String phone) throws Exception {
		System.out.println("userName="+userName);
		System.out.println("phone="+phone);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userName", userName);
		map.put("phone", phone);
		return sqlSession.selectOne("UserMapper.findUserId", map);
	}
	
	public void updateUser(User user) throws Exception {
	//	Career career = new Career();
	//	License license = new License();
	//	System.out.println("map="+map);
		sqlSession.update("UserMapper.updateUser", user);
		
		
	}	
	public void updateLicense(Map license, User user) throws Exception {
		System.out.println("license="+license);
		System.out.println("user="+user);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", license.get("list"));
		map.put("userId", user.getUserId());
		sqlSession.update("UserMapper.updateLicense", map);
		}
	public void updateCareer(Map career, User user) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", career.get("list2"));
		map.put("userId", user.getUserId());
		sqlSession.update("UserMapper.updateCareer", map);
	}
	//	Map map = new HashMap();
//		map.put("license", license);
//		map.put("career", career);
//		map.put("user", user);
		

	public List<User> getUserList(Search search) throws Exception {
		return sqlSession.selectList("UserMapper.getUserList", search);
	}
	
	public void deleteUser(User user, Date quitDate, String quitStatus) throws Exception {
		System.out.println("dbUser="+user);
		System.out.println("quitDate="+quitDate);
		System.out.println("quitStatus="+quitStatus);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("userId", user.getUserId());
		map.put("quitDate", quitDate);
		map.put("quitStatus", quitStatus);
		sqlSession.delete("UserMapper.deleteUser", map);
	}

	// 게시판 Page 처리를 위한 전체 Row(totalCount)  return
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("UserMapper.getTotalCount", search);
	}
}