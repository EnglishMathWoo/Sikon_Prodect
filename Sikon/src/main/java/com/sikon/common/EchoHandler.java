package com.sikon.common;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.sikon.service.alarm.AlarmService;
import com.sikon.service.domain.Alarm;
import com.sikon.service.domain.User;


public class EchoHandler extends TextWebSocketHandler {
	
	///Field
	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
		
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
		
	//로그인 한 인원 전체
	private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	// 1:1로 할 경우
	private Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();
	
	
	///Method
	@Override
	public void afterConnectionEstablished(WebSocketSession socketSession) throws Exception { //클라이언트와 서버 연결
		
		System.out.println("Socket 연결");
		sessions.add(socketSession);
		System.out.println(currentUserName(socketSession)); //현재 접속한 유저
		String senderId = currentUserName(socketSession);
		userSessionsMap.put(senderId, socketSession);
	}
	
	
	@Override
	protected void handleTextMessage(WebSocketSession socketSession, TextMessage message) throws Exception { //push알람 메시지 전송
		
		System.out.println("session"+currentUserName(socketSession));
		String msg = message.getPayload(); //자바스크립트에서 넘어온 메시지
		System.out.println("msg="+msg);
		
		if (StringUtils.isNotEmpty(msg)) {
			
			String[] strs = msg.split(",");
			
			if(strs != null && strs.length == 4) {
				
				String cmd = strs[0];
				String fromUserId = strs[1];
				String fromUserNickname = strs[2];
				String toUserId = strs[3];
				
				WebSocketSession toUserSession = userSessionsMap.get(toUserId);
				System.out.println("fromUserSession="+userSessionsMap.get(fromUserId));
				System.out.println("toUserSession="+toUserSession);
				
				Alarm alarm = new Alarm();
								
				//쿠킹멘토 즐겨찾기
				if ("love".equals(cmd) && toUserSession != null) {
					
					TextMessage tmpMsg = new TextMessage(fromUserNickname + "님이 멘토님을 즐겨찾기에 추가했습니다!");
					toUserSession.sendMessage(tmpMsg);
					
					alarm.setAlarmTarget(toUserId);
					alarm.setAlarmContent(fromUserNickname + "님이 멘토님을 즐겨찾기에 추가했습니다!");
			
					alarmService.addAlarm(alarm);
				} else if ("love".equals(cmd)){
					alarm.setAlarmTarget(toUserId);
					alarm.setAlarmContent(fromUserNickname + "님이 멘토님을 즐겨찾기에 추가했습니다!");;
					alarmService.addAlarm(alarm);
				}
			}
			
			if(strs != null && strs.length == 5) {
				
				String cmd = strs[0];
				String fromUserId = strs[1];
				String fromUserNickname = strs[2];
				String toUserId = strs[3];
				String postName = strs[4];
				
				WebSocketSession toUserSession = userSessionsMap.get(toUserId);
				System.out.println("fromUserSession="+userSessionsMap.get(fromUserId));
				System.out.println("toUserSession="+toUserSession);
				
				Alarm alarm = new Alarm();
								
				//쿠킹클래스 좋아요
				if ("heart".equals(cmd) && toUserSession != null) {
					
					TextMessage tmpMsg = new TextMessage(fromUserNickname + "님이 멘토님의 쿠킹클래스에 좋아요를 눌렀습니다! : [제목 : '"
							+ postName+"']");
					toUserSession.sendMessage(tmpMsg);
					
					alarm.setAlarmTarget(toUserId);
					alarm.setAlarmContent(fromUserNickname + "님이 멘토님의 쿠킹클래스에 좋아요를 눌렀습니다! : [제목 : '"
							+ postName+"']");
			
					alarmService.addAlarm(alarm);
				} else if ("heart".equals(cmd)){
					alarm.setAlarmTarget(toUserId);
					alarm.setAlarmContent(fromUserNickname + "님이 멘토님의 쿠킹클래스에 좋아요를 눌렀습니다! : [제목 : '"
							+ postName+"']");
					alarmService.addAlarm(alarm);
				}
				
				//레시피 리뷰
				if ("recipeReview".equals(cmd) && toUserSession != null) {
					TextMessage tmpMsg = new TextMessage(fromUserNickname + "님이 회원님의 레시피에 리뷰를 작성했습니다! : [제목 : '"
									+ postName+"']");
					toUserSession.sendMessage(tmpMsg);
					alarm.setAlarmTarget(toUserId);
					alarm.setAlarmContent(fromUserNickname + "님이 회원님의 레시피에 리뷰를 작성했습니다! : [제목 : '"
							+ postName+"']");
					alarmService.addAlarm(alarm);
				} else if ("recipeReview".equals(cmd)){
					alarm.setAlarmTarget(toUserId);
					alarm.setAlarmContent(fromUserNickname + "님이 회원님의 레시피에 리뷰를 작성했습니다! : [제목 : '"
							+ postName+"']");
					alarmService.addAlarm(alarm);
				}
			}
		}
	}
	
	
	@Override
	public void afterConnectionClosed(WebSocketSession socketSession, CloseStatus status) throws Exception { //웹소켓 연결 해제
		
		System.out.println("Socket 끊음");
		sessions.remove(socketSession);
		userSessionsMap.remove(currentUserName(socketSession),socketSession);
	}

	
	private String currentUserName(WebSocketSession socketSession) { //현재 접속한 유저 아이디
		
		Map<String, Object> httpSession = socketSession.getAttributes();
		User loginUser = (User)httpSession.get("user");
		
		if(loginUser == null) {
			String mid = socketSession.getId();
			return mid;
		}
		
		String mid = loginUser.getUserId();
		return mid;
	}
	
}