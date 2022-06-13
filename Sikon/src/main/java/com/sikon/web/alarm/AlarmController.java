package com.sikon.web.alarm;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.alarm.AlarmService;
import com.sikon.service.domain.Alarm;
import com.sikon.service.domain.User;



//==> 회원관리 Controller
@Controller
@RequestMapping("/alarm/*")
public class AlarmController {
	
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
	
			
	public AlarmController(){
		System.out.println(this.getClass());
	}
	
	
	@RequestMapping( value="/listAlarm" )
	public String listCoupon(@ModelAttribute("search") Search search, @RequestParam("userId") String userId,
			Model model , HttpServletRequest request, HttpSession session) throws Exception{
		
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String , Object> resultMap = alarmService.getAlarmList(search, userId);
		
		Alarm alarm = new Alarm();
		alarm.setAlarmTarget(userId);
		alarmService.updateAlarmStatus(alarm);
		
		session.removeAttribute("alarm");
		session.setAttribute("alarm", 0);
		User user=(User)session.getAttribute("user");
				
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, pageSize);
		
		// Model 과 View 연결
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		model.addAttribute("user", user);
		
		return "forward:/alarm/listAlarm.jsp";
	}
		

	@RequestMapping( value="/deleteAlarm", method=RequestMethod.GET)
	public String deleteAlarm( @RequestParam("userId") String userId ) throws Exception{

		System.out.println("/coupon/deleteAlarm : GET");
		
		//Business Logic
		alarmService.deleteAlarm(userId);
		
		return "redirect:/recipe/listRecipe";
	}

}