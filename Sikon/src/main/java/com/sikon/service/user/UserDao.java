package com.sikon.service.user;

import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Career;
import com.sikon.service.domain.License;
import com.sikon.service.domain.User;


//==> 회원관리에서 CRUD 추상화/캡슐화한 DAO Interface Definition
public interface UserDao {
	
	// INSERT
	public void addUser(User user, Map map) throws Exception;
//	public void addLicense(License license) throws Exception;
//	public void addCareer(Career career) throws Exception;
	
	// id 중복체크
	public int checkId(String userId) throws Exception;
	// 닉네임 중복체크
	public int checkNickname(String userNickname) throws Exception;

	// SELECT ONE
	public User getUser(String userId) throws Exception ;
	public List getUCL(String userId) throws Exception;
	// ID찾기
	public User findUserId(String userNickname) throws Exception ;

	// 회원정보수정
	public void updateUser(User user) throws Exception ;
	public void updateLicense(List license, String userId) throws Exception ;
	public void updateCareer(List career, String userId) throws Exception;
	// 회원목록
	public List<User> getUserList(Search search) throws Exception ;
	
	// 회원탈퇴
	public void deleteUser(User user) throws Exception ;
		
	// 게시판 Page 처리를 위한 전체Row(totalCount)  return
	public int getTotalCount(Search search) throws Exception ;

	

	




	
	
}