package com.sikon.service.user.impl;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
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
import com.sikon.service.domain.License;
import com.sikon.service.domain.User;
import com.sikon.service.user.UserDao;
import com.sikon.service.user.UserService;;


//==> 회원관리 서비스 구현
@Service("userServiceImpl")
public class UserServiceImpl implements UserService{
	
	///Field
	@Autowired
	@Qualifier("userDaoImpl")
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
//	@Autowired
//	private JavaMailSender mailSender;
	
	///Constructor
	public UserServiceImpl() {
		System.out.println(this.getClass());
	}

	///Method
	public void addUser(User user, Map map) throws Exception {
		System.out.println("map="+map);
		userDao.addUser(user, map);
	}
	public void addKakaoUser(User user) throws Exception {
		System.out.println("user="+user);
		userDao.addKakaoUser(user);
	}
//	public void addLicense(License license) throws Exception {
//		System.out.println("license="+license);
//		userDao.addLicense(license);
//	}
//	public void addCareer(Career career) throws Exception {
//		System.out.println("career="+career);
//		userDao.addCareer(career);
//	}
	
	public String getAccessToken (String authorize_code) throws Exception{
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
            
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			// POST 요청을 위해 기본값이 false인 setDoOutput을 true로
            
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);
			// POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
            
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
            
			sb.append("&client_id=07cd433423b8401d52fda5136624e099"); //본인이 발급받은 key
			sb.append("&redirect_uri=http://localhost:8080/user/kakaoLogin"); // 본인이 설정한 주소
		//	sb.append("&redirect_uri=http://192.168.0.11:8080/user/kakaoLogin"); // 본인이 설정한 주소
			
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
	//		String password = "";
			
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
	//		userInfo.put("password", 1111);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return userInfo;
	}
	
	// id 중복체크
	public int checkId(String userId) throws Exception {
		int cnt = userDao.checkId(userId);
		System.out.println("cnt: " + cnt);
		return cnt;
	}
	// id 중복체크
	public int checkNickname(String userNickname) throws Exception {
		int cnt = userDao.checkNickname(userNickname);
		System.out.println("cnt: " + cnt);
		return cnt;
	}

	public User getUser(String userId) throws Exception {
		return userDao.getUser(userId);
	}
	public List getLicense(String userId) throws Exception {
		return userDao.getLicense(userId);
	}
	public List getCareer(String userId) throws Exception {
		return userDao.getCareer(userId);
	}
	public List getUCL(String userId) throws Exception {
		return userDao.getUCL(userId);
	}
	
	public String findUserId(String userName, String phone) throws Exception {
		System.out.println("userName="+userName);
		 System.out.println("phone="+phone);
		String result = "";
		
		try {
			result = userDao.findUserId(userName, phone);
		}catch(Exception e) {
			e.printStackTrace();
		}
		System.out.println("userName="+userName);
		 System.out.println("phone="+phone);
		
		return result;
	}
	
	// Pw찾기 유효성 검사
	public int findUserPwCheck(User user)throws Exception {
		return userDao.findUserPwCheck(user);
	}
		
	// Pw찾기
	public void updateUserPw(String userId,String userName)throws Exception {
		int rendom = (int)((Math.random()* (99999 - 10000 + 1)) + 10000);
		String key = "";
		key = Integer.toString(rendom);
		String password = key;
		
		userDao.updateUserPw(userId, userName, password);
		
		String from = "se981106@gmail.com";//보내는 이 메일주소
	    System.out.println("1 from="+from);
	    String to = userId;
	    System.out.println("2 userId="+userId);
	    String title = "식탁의 온도 비밀번호 찾기를 통한 임시비밀번호입니다.";
	    System.out.println("3 title="+title);
	    String content = "<h1>임시비밀번호 발급</h1>" +
							"<br/>"+userId+"님 "+
							"<br/>비밀번호 찾기를 통한 임시 비밀번호입니다."+
							"<br/>임시비밀번호 :   <h2>"+password+"</h2>"+
							"<br/>로그인 후 비밀번호 변경을 해주세요.";
	    System.out.println("4 content="+content);
	    try {
	    	System.out.println("오냐");
	    	
	    	//JavaMailSenderImpl mailSender = new JavaMailSenderImpl();
//			MimeMessage mail = mailSender.createMimeMessage();
//			System.out.println("여긴 오냐");
//	        MimeMessageHelper mailHelper = new MimeMessageHelper(mail, true, "UTF-8"); // true는 멀티파트 메세지를 사용하겠다는 뜻?
//	        System.out.println("5 mailHelper="+mailHelper);
//	        
//	        mailHelper.setFrom(from); // 보내는 사람 이메일주소 표기, 생략하면 작동안한다
//	        mailHelper.setTo(to); // 받는 사람 이메일
//	        mailHelper.setSubject(title); // 메일제목
//	        mailHelper.setText(content, true); // 메일내용   
//	        System.out.println("6 from="+from);
//	        System.out.println("7 to="+to);
//	        System.out.println("8 title="+title);
//	        System.out.println("9 content="+content);
//	        
//	        mailSender.send(mail);
//	        System.out.println("10 mail="+mail);
	        
	        
	    } catch(Exception e) {
	         
	    }
	    
		
	}
		

	public void updateUser(User user) throws Exception {
		System.out.println("user="+user);
	//	System.out.println("map="+map);
		
		userDao.updateUser(user);
	}
	public void updateLicense(Map license, User user) throws Exception {
		userDao.updateLicense(license, user);
	}
	public void updateCareer(Map career, User user) throws Exception {
		userDao.updateCareer(career, user);
	}
	public Map<String , Object > getUserList(Search search) throws Exception {
		List<User> list= userDao.getUserList(search);
		int totalCount = userDao.getTotalCount(search);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list );
		map.put("totalCount", new Integer(totalCount));
		
		return map;
	}

	public void deleteUser(User user) throws Exception {
		userDao.deleteUser(user);
	}

	public boolean checkDuplication(String userId) throws Exception {
		boolean result=true;
		User user=userDao.getUser(userId);
		if(user != null) {
			result=false;
		}
		return result;
	}
}