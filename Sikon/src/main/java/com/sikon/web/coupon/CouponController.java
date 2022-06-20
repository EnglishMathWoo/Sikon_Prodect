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


//==> ÄíÆù Controller
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
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	
	///Constructor
	public CouponController(){
		System.out.println(this.getClass());
	}
	
	
	///Method
	@RequestMapping( value="/addCoupon", method=RequestMethod.POST )
	public String addCoupon( @ModelAttribute("coupon") Coupon coupon ) throws Exception{

		System.out.println("/coupon/addCoupon : POST");
		
		couponService.addCoupon(coupon);
		
		return "forward:/coupon/listCoupon";
	}
	
	@RequestMapping( value="/issueCoupon", method=RequestMethod.POST )
	public String issueCoupon( @ModelAttribute("coupon") Coupon coupon, @RequestParam("userId") List<String> userId ) throws Exception{

		System.out.println("/coupon/issueCoupon : POST");
		
		for (String couponUser : userId) {
			User user = userService.getUser(couponUser);
			coupon.setCouponUser(user);
			coupon.setIssueStatus("001");
			couponService.issueCoupon(coupon);
	    }
		
		return "redirect:/coupon/listIssuedCoupon";
	}
	
	@RequestMapping( value="/listCoupon" )
	public String listCoupon(@ModelAttribute("search") Search search , Model model) throws Exception{
		
		System.out.println("/coupon/listCoupon");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		Map<String , Object> resultMap = couponService.getCouponList(search);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, pageSize);
		
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		return "forward:/coupon/listCoupon.jsp";
	}
	
	@RequestMapping( value="/listMyCoupon" )
	public String listMyCoupon( @ModelAttribute("search") Search search , Model model, @RequestParam("userId") String userId ) throws Exception{
		
		System.out.println("/coupon/listMyCoupon");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		Map<String , Object> resultMap = couponService.getMyCouponList(search, userId);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, pageSize);
		
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
				
		return "forward:/mypage/listMyCoupon.jsp";
	}
	
	@RequestMapping(value="/issueCouponView")
	public String issueCouponView( @ModelAttribute("search") Search search , Model model) throws Exception{
				
		System.out.println("/coupon/issueCouponView");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		Map<String , Object> map = userService.getUserList(search);
		List <Coupon> couponList = couponService.getCoupon(); 
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);

		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		model.addAttribute("couponList", couponList);
		
		return "forward:/coupon/issueCoupon.jsp";
	}
	
	@RequestMapping( value="/listIssuedCoupon" )
	public String listIssuedCoupon( @ModelAttribute("search") Search search , Model model ) throws Exception{
		
		System.out.println("/coupon/listIssuedCoupon");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
	
		Map<String , Object> resultMap = couponService.getIssuedCouponList(search);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)resultMap.get("totalCount")).intValue(), pageUnit, pageSize);
		
		model.addAttribute("list", resultMap.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
				
		return "forward:/coupon/listIssuedCoupon.jsp";
	}
			
	@RequestMapping( value="/updateIssueStatus", method=RequestMethod.GET )
	public String updateIssueStatus( @RequestParam("checkCount") int checkCount, @RequestParam("checkList") int[] checkList ) throws Exception{

		System.out.println("/coupon/updateIssueStatus : GET");
		
		for(int i=0; i<checkCount; i++) {
			Coupon coupon = couponService.getIssuedCoupon(checkList[i]);
			coupon.setIssueStatus("003");
			couponService.updateIssueStatus(coupon);
		}		
		
		return "redirect:/coupon/listIssuedCoupon";
	}
	
	@RequestMapping( value="/deleteCoupon", method=RequestMethod.GET)
	public String deleteCoupon( @RequestParam("checkCount") int checkCount, @RequestParam("checkList") int[] checkList ) throws Exception{

		System.out.println("/coupon/deleteCoupon : GET");
		
		for(int i=0; i<checkCount; i++) {
			couponService.deleteCoupon(checkList[i]);
		}		
		
		return "forward:/coupon/listCoupon";
	}
	
}