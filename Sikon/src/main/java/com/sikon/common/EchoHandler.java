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
		
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml 참조 할것
	//==> 아래의 두개를 주석을 풀어 의미를 확인 할것
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	
	//로그인 한 인원 전체
	private List<WebSocketSession> sessions = new ArrayList<WebSocketSession>();
	// 1:1로 할 경우
	private Map<String, WebSocketSession> userSessionsMap = new HashMap<String, WebSocketSession>();
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {//클라이언트와 서버가 연결
		
		System.out.println("Socket 연결");
		sessions.add(session);
		System.out.println(currentUserName(session));//현재 접속한 사람
		String senderId = currentUserName(session);
		userSessionsMap.put(senderId, session);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {// 메시지
		
		System.out.println("session"+currentUserName(session));
		String msg = message.getPayload();//자바스크립트에서 넘어온 Msg
		System.out.println("msg="+msg);
		
		if (StringUtils.isNotEmpty(msg)) {
			System.out.println("if문 들어옴?");
			String[] strs = msg.split(",");
			if(strs != null && strs.length == 3) {
				
				String cmd = strs[0];
				String replyWriter = strs[1];
				String noticeTitle = strs[2];
				System.out.println("length 성공?"+cmd);
				
				WebSocketSession replyWriterSession = userSessionsMap.get(replyWriter);
				WebSocketSession boardWriterSession = userSessionsMap.get("user@naver.com");
				System.out.println("replyWriterSession="+userSessionsMap.get(replyWriter));
				System.out.println("boardWriterSession"+boardWriterSession);
				
				//댓글
				if ("reply".equals(cmd) && boardWriterSession != null) {
					System.out.println("onmessage되나??");
					TextMessage tmpMsg = new TextMessage(replyWriter + "님이 "
									+ noticeTitle+"라는 제목의 공지사항을 올렸습니다!");
					boardWriterSession.sendMessage(tmpMsg);
				} else if ("reply".equals(cmd)){
				
					Alarm alarm = new Alarm();
					alarm.setAlarmTarget("user@naver.com");
					alarm.setAlarmContent(replyWriter + "님이 "
							+ noticeTitle+"라는 제목의 공지사항을 올렸습니다!");
					alarmService.addAlarm(alarm);
				}
			}
			
		}
	}
	
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {//연결 해제
		
		System.out.println("Socket 끊음");
		sessions.remove(session);
		userSessionsMap.remove(currentUserName(session),session);
	}

	
	private String currentUserName(WebSocketSession session) {
		Map<String, Object> httpSession = session.getAttributes();
		User loginUser = (User)httpSession.get("user");
		
		if(loginUser == null) {
			String mid = session.getId();
			return mid;
		}
		String mid = loginUser.getUserId();
		return mid;
		
	}
}