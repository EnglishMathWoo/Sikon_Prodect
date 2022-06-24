package com.sikon.service.user.impl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.sikon.common.Search;
import com.sikon.service.domain.Career;
import com.sikon.service.domain.License;
import com.sikon.service.domain.User;
import com.sikon.service.user.UserDao;
import com.sikon.service.user.UserService;;



@Service("userServiceImpl")
public class UserServiceImpl implements UserService{
	
	///Field
	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
	
	///Constructor
	public UserServiceImpl() {
		System.out.println(this.getClass());
	}

	
	///Method
	
	// 일반 회원가입
	public void addUser(User user, Map map) throws Exception {
		userDao.addUser(user, map);
	}
	// 카카오 회원가입
	public void addKakaoUser(User user, Map map) throws Exception {
		userDao.addKakaoUser(user, map);
	}

	// id 중복체크
	public int checkId(String userId) throws Exception {
		int cnt = userDao.checkId(userId);
		System.out.println("cnt: " + cnt);
		return cnt;
	}
	// 닉네임 중복체크
	public int checkNickname(String userNickname) throws Exception {
		int cnt = userDao.checkNickname(userNickname);
		System.out.println("cnt: " + cnt);
		return cnt;
	}
	
	// 카카오 로그인할때 받아오는 토큰
	public String getAccessToken (String authorize_code) throws Exception{
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
            
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
            
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=07cd433423b8401d52fda5136624e099"); //본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:8080/user/kakaoLogin"); // 본인이 설정한 주소
		//	sb.append("&redirect_uri=http://192.168.0.11:8080/user/kakaoLogin"); // ip 11 주소
			
			sb.append("&code=" + authorize_code);
			bw.write(sb.toString());
			bw.flush();
            
			// 결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);
            
			// 요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
            
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);
            
			// Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);
            
			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();
            
			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);
            
			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return access_Token;
	}
	
	// 얻은 토큰으로 카카오회원정보 가져오기
	public HashMap<String, Object> getUserInfo(String access_Token) throws Exception{

		// 요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
		HashMap<String, Object> userInfo = new HashMap<String, Object>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");

			// 요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));

			String line = "";
			String result = "";
					
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();

			System.out.println(email);
			userInfo.put("nickname", nickname);
			userInfo.put("email", email);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return userInfo;
	}
	
	// 카카오 로그인할때 회원ID 중복체크
	public boolean checkDuplication(String userId) throws Exception {
		boolean result=true;
		User user=userDao.getUser(userId);
		if(user != null) {
			result=false;
		}
		return result;
	}
	
	
	// 회원정보 가져오기
	public User getUser(String userId) throws Exception {
		return userDao.getUser(userId);
	}
	// 자격증정보 가져오기
	public List getLicense(String userId) throws Exception {
		return userDao.getLicense(userId);
	}
	// 경력사항정보 가져오기
	public List getCareer(String userId) throws Exception {
		return userDao.getCareer(userId);
	}
	
	// ID찾기
	public String findUserId(String userName, String phone) throws Exception {
		String result = "";
		
		try {
			result = userDao.findUserId(userName, phone);
		}catch(Exception e) {
			e.printStackTrace();
		}
				
		return result;
	}
	
	// 쿠킹멘토 승인
	public void changeUserRole(String userId, String role) throws Exception {
		userDao.changeUserRole(userId, role);
	}
	// 쿠킹멘토 거절
	public void backUserRole(String userId, String mentorApply) throws Exception {
		userDao.backUserRole(userId, mentorApply);
	}
		
	// 회원정보수정
	public void updateUser(User user) throws Exception {
		userDao.updateUser(user);
	}
	public void updateLicense(Map license, User user) throws Exception {
		userDao.updateLicense(license, user);
	}
	public void updateCareer(Map career, User user) throws Exception {
		userDao.updateCareer(career, user);
	}
	
	// 패스워드 변경
	public void updateUserPw(String userId,String password)throws Exception {
		userDao.updateUserPw(userId, password);
	}
	
	// 회원정보리스트
	public Map<String , Object > getUserList(Search search) throws Exception {
		List<User> list= userDao.getUserList(search);
		int totalCount = userDao.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}

	// 회원탈퇴
	public void deleteUser(User user, Date quitDate, String quitStatus) throws Exception {
		userDao.deleteUser(user, quitDate, quitStatus);
	}

	
}