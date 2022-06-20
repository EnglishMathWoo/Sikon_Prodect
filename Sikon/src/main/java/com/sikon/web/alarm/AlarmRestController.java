package com.sikon.web.alarm;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.service.alarm.AlarmService;


@RestController
@RequestMapping("/alarm/*")
public class AlarmRestController {
	
	///Field
	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
		
	
	///Constructor
	public AlarmRestController(){
		System.out.println(this.getClass());
	}

	
	///Method
	@RequestMapping(value="json/addUncheckedAlarm")
	public void addUncheckedAlarm( HttpSession session ) throws Exception{
		
		System.out.println("/alarm/json/addUncheckedAlarm");
					
		int uncheckedAlarm = (int)session.getAttribute("alarm");
		session.removeAttribute("alarm");
		session.setAttribute("alarm", uncheckedAlarm+1);
	}
	
}