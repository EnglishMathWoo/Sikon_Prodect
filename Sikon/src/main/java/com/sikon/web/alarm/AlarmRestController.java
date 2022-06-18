package com.sikon.web.alarm;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.service.alarm.AlarmService;


//==> 회원관리 RestController
@RestController
@RequestMapping("/alarm/*")
public class AlarmRestController {
	
	///Field
	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
		
	public AlarmRestController(){
		System.out.println(this.getClass());
	}

	
	@RequestMapping(value="json/addUncheckedAlarm")
	public void addUncheckedAlarm(HttpSession session) throws Exception{
					
		int uncheckedAlarm = (int)session.getAttribute("alarm");
		session.removeAttribute("alarm");
		session.setAttribute("alarm", uncheckedAlarm+1);
	}
	
}