package com.sikon.web.point;


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

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.point.PointService;
import com.sikon.service.domain.User;
import com.sikon.service.user.UserService;


//==> 포인트 Controller
@Controller
@RequestMapping("/point/*")
public class PointController {
	
	///Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	@Autowired
	@Qualifier("pointServiceImpl")
	private PointService pointService;
	

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	
	///Constructor
	public PointController(){
		System.out.println(this.getClass());
	}

	
	//나의 포인트 목록 가져오기
	@RequestMapping( value="/listMyPoint" )
	public String listMyPoint(@ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
		
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(10);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		

		Map<String , Object> resultMap = pointService.getPointList(search, user.getUserId());
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, 10);
		

		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
				
		return "forward:/mypage/listMyPoint.jsp";
	}
	
	
}