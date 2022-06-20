package com.sikon.web.alarm;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.alarm.AlarmService;
import com.sikon.service.domain.Alarm;
import com.sikon.service.domain.User;


@Controller
@RequestMapping("/alarm/*")
public class AlarmController {
	
	///Field
	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	
	///Constructor
	public AlarmController(){
		System.out.println(this.getClass());
	}
	
	
	///Method
	@RequestMapping( value="/listAlarm" )
	public String listAlarm( @ModelAttribute("search") Search search, @RequestParam("userId") String userId,
			Model model, HttpSession session ) throws Exception{ 
		
		System.out.println("/alarm/listAlarm");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		
		search.setPageSize(pageSize);
		
		Map<String , Object> resultMap = alarmService.getAlarmList(search, userId);
		
		Alarm alarm = new Alarm();
		alarm.setAlarmTarget(userId);
		alarmService.updateAlarmStatus(alarm);
		
		session.removeAttribute("alarm");
		session.setAttribute("alarm", 0);
		User user=(User)session.getAttribute("user");
				
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, pageSize);
		
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		model.addAttribute("user", user);
		
		return "forward:/alarm/listAlarm.jsp";
	}

}