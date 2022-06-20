package com.sikon.web.point;

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
import org.springframework.web.servlet.ModelAndView;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.point.PointService;
import com.sikon.service.domain.Point;
import com.sikon.service.domain.User;
import com.sikon.service.user.UserService;


//==> 쿠폰 Controller
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
	
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml 참조 할것
	//==> 아래의 두개를 주석을 풀어 의미를 확인 할것
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	
	///Constructor
	public PointController(){
		System.out.println(this.getClass());
	}
		
	///Method
	
	@RequestMapping( value="/listMyPoint" )
	public String listMyPoint(@ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
		
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(10);
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		// Business logic 수행
		Map<String , Object> resultMap = pointService.getPointList(search, user.getUserId());
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, 10);
		
		// Model 과 View 연결
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
				
		return "forward:/mypage/listMyPoint.jsp";
	}
	
	@RequestMapping( value="/mypage" )
	public String mypage(HttpServletRequest request) throws Exception{
			System.out.println("/product/updateProduct : GET");
			HttpSession session = request.getSession();
			User user = (User) session.getAttribute("user");
			
		user = userService.getUser(user.getUserId());
		
		session.setAttribute("user", user);
		
		return "forward:/mypage/mymain.jsp";
	}
	
	
}