package com.sikon.service.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.License;
import com.sikon.service.domain.User;


//==> 회원관리에서 서비스할 내용 추상화/캡슐화한 Service  Interface Definition  
public interface UserService {
	
	// 회원가입
	public void addUser(User user, Map map) throws Exception;
	public void addKakaoUser(User user) throws Exception;
//	public void addLicense(License license) throws Exception;
//	public void addCareer(Career career) throws Exception;
	
	// 카카오 로그인
	public String getAccessToken (String authorize_code) throws Exception;
	public HashMap<String, Object> getUserInfo(String access_Token) throws Exception;
	
	// 내정보확인 
	public User getUser(String userId) throws Exception;
	public List getLicense(String userId) throws Exception;
	public List getCareer(String userId) throws Exception;
	
	public List getUCL(String userId) throws Exception;
	// ID찾기
	public String findUserId(String userName, String phone) throws Exception ;
	
	// 회원정보수정
	public void updateUser(User user) throws Exception;
	public void updateLicense(Map license, User user) throws Exception;
	public void updateCareer(Map career, User user) throws Exception;
	// 회원정보리스트 
	public Map<String , Object> getUserList(Search search) throws Exception;
	
	// 회원탈퇴
	public void deleteUser(User user) throws Exception ;
	
	// 회원 ID 중복 확인
	public boolean checkDuplication(String userId) throws Exception;
	
	// id 중복체크
	public int checkId(String userId) throws Exception;
	// 닉네임 중복체크
	public int checkNickname(String userNickname) throws Exception;

	

	

	
	
}