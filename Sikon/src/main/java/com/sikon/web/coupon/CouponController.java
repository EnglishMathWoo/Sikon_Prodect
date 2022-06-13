package com.sikon.web.coupon;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.sikon.service.coupon.CouponService;
import com.sikon.service.domain.Coupon;
import com.sikon.service.domain.User;
import com.sikon.service.user.UserService;


//==> 쿠폰 Controller
@Controller
@RequestMapping("/coupon/*")
public class CouponController {
	
	///Field
	@Autowired
	@Qualifier("couponServiceImpl")
	private CouponService couponService;
	
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml 참조 할것
	//==> 아래의 두개를 주석을 풀어 의미를 확인 할것
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	
	///Constructor
	public CouponController(){
		System.out.println(this.getClass());
	}
		
	///Method
	@RequestMapping( value="/addCoupon", method=RequestMethod.POST )
	public String addCoupon(@ModelAttribute("coupon") Coupon coupon) throws Exception{

		System.out.println("/coupon/addCoupon : POST");
		
		//Business Logic
		System.out.println(coupon.getCouponNo());
		couponService.addCoupon(coupon);
		
		return "forward:/coupon/listCoupon";
	}
	
	@RequestMapping( value="/listCoupon" )
	public String listCoupon(@ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
		
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String , Object> resultMap = couponService.getCouponList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, pageSize);
		
		// Model 과 View 연결
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		return "forward:/coupon/listCoupon.jsp";
	}
	
	@RequestMapping( value="/deleteCoupon", method=RequestMethod.GET)
	public String deleteCoupon( @RequestParam("checkCount") int checkCount, @RequestParam("checkList") int[] checkList ) throws Exception{

		System.out.println("/coupon/deleteCoupon : GET");
		
		//Business Logic
		for(int i=0; i<checkCount; i++) {
			couponService.deleteCoupon(checkList[i]);
		}		
		
		return "forward:/coupon/listCoupon";
	}
		
	@RequestMapping(value="/issueCouponView")
	public String issueCouponView(@ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
				
		System.out.println("/coupon/issueCouponView");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String , Object> map = userService.getUserList(search);
		List <Coupon> couponList = couponService.getCoupon(); 
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		model.addAttribute("couponList", couponList);
		
		return "forward:/coupon/issueCoupon.jsp";
	}
	
	@RequestMapping( value="/issueCoupon", method=RequestMethod.POST )
	public String issueCoupon(@ModelAttribute("coupon") Coupon coupon, @RequestParam("userId") List<String> userId) throws Exception{

		System.out.println("/coupon/issueCoupon : POST");
		
		//Business Logic		
		for (String couponUser : userId) {
			User user = userService.getUser(couponUser);
			coupon.setCouponUser(user);
			coupon.setIssueStatus("001");
			couponService.issueCoupon(coupon);
	    }
		
		return "redirect:/coupon/listIssuedCoupon";
	}
	
	@RequestMapping( value="/listIssuedCoupon" )
	public String listIssuedCoupon(@ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
		
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String , Object> resultMap = couponService.getIssuedCouponList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, pageSize);
		
		// Model 과 View 연결
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
				
		return "forward:/coupon/listIssuedCoupon.jsp";
	}
	
	@RequestMapping( value="/listMyCoupon" )
	public String listMyCoupon(@ModelAttribute("search") Search search , Model model , HttpServletRequest request, @RequestParam("userId") String userId) throws Exception{
		
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String , Object> resultMap = couponService.getMyCouponList(search, userId);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, pageSize);
		
		// Model 과 View 연결
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
				
		return "forward:/mypage/listMyCoupon.jsp";
	}
	
	@RequestMapping( value="/updateIssueStatus", method=RequestMethod.GET )
	public String updateIssueStatus(@RequestParam("checkCount") int checkCount, @RequestParam("checkList") int[] checkList) throws Exception{

		System.out.println("/coupon/updateIssueStatus : GET");
		
		//Business Logic
		for(int i=0; i<checkCount; i++) {
			Coupon coupon = couponService.getIssuedCoupon(checkList[i]);
			coupon.setIssueStatus("003");
			couponService.updateIssueStatus(coupon);
		}		
		
		return "redirect:/coupon/listIssuedCoupon";
	}
	
}