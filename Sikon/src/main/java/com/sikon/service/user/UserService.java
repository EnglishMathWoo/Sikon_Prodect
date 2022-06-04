package com.sikon.service.user;

import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Career;
import com.sikon.service.domain.License;
import com.sikon.service.domain.User;


//==> 회원관리에서 서비스할 내용 추상화/캡슐화한 Service  Interface Definition  
public interface UserService {
	
	// 회원가입
	public void addUser(Map map) throws Exception;

	// 내정보확인 / 로그인
	public User getUser(String userId) throws Exception;
	
	// ID찾기
	public User findUserId(String userNickname) throws Exception ;
	
	// 회원정보수정
	public void updateUser(User user, Map license, Map career) throws Exception;
	
	// 회원정보리스트 
	public Map<String , Object> getUserList(Search search) throws Exception;
	
	// 회원탈퇴
	public void deleteUser(User user) throws Exception ;
	
	// 회원 ID 중복 확인
	public boolean checkDuplication(String userId) throws Exception;
	
}