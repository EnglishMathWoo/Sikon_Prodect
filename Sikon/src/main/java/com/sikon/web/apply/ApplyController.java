package com.sikon.web.apply;

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
import com.sikon.service.apply.ApplyService;
import com.sikon.service.cook.CookService;
import com.sikon.service.domain.Apply;
import com.sikon.service.domain.Cook;
import com.sikon.service.domain.Review;
import com.sikon.service.domain.User;
import com.sikon.service.domain.Wish;
import com.sikon.service.review.ReviewService;


@Controller
@RequestMapping("/apply/*")
public class ApplyController {

	///Field
		@Autowired
		@Qualifier("applyServiceImpl")
		private ApplyService applyService;
		
		/// Field
		@Autowired
		@Qualifier("cookServiceImpl")
		private CookService cookService;
		
		@Autowired
		@Qualifier("reviewServiceImpl")
		private ReviewService reviewService;
		
		//setter Method 구현 않음
			
		public ApplyController() {
			System.out.println(this.getClass());
		}
		
		//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml 참조 할것
		//==> 아래의 두개를 주석을 풀어 의미를 확인 할것
		@Value("#{commonProperties['pageUnit']}")
		//@Value("#{commonProperties['pageUnit'] ?: 3}")
		int pageUnit;
		
		@Value("#{commonProperties['pageSize']}")
		//@Value("#{commonProperties['pageSize'] ?: 2}")
		int pageSize;
		
		//@RequestMapping("/addPurchaseView.do")
		@RequestMapping( value="addApply", method=RequestMethod.GET )
		public ModelAndView addApply(@RequestParam("cookNo") int cookNo,HttpSession session) throws Exception {

			System.out.println("/apply/addApply : GET");
			Cook cook=cookService.getCook(cookNo);
			User user = (User)session.getAttribute("user");
			
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("cook", cook);
			modelAndView.addObject("user", user);
			//addObject : key와 value를 담아 보낼 수 있는 메서드


			modelAndView.setViewName("forward:/apply/addApply.jsp");
			//modelAndView.setViewName("forward:/apply/addApply_KakaoPay.jsp");
			
			return modelAndView;
		}
		
		//@RequestMapping("/addPurchase.do")
		@RequestMapping( value="addApply", method=RequestMethod.POST )
		public ModelAndView addApply(@ModelAttribute("apply") Apply apply
				,@RequestParam("cookNo") int cookNo, HttpServletRequest request,HttpSession session) throws Exception {
			
			System.out.println("/apply/addApply : POST");
			
			Cook cook=cookService.getCook(cookNo);			
			
			User user = (User)session.getAttribute("user");
			
			
			
		
			
			
			apply.setClassCook(cook);
			apply.setApplier(user);  
			apply.setApplyStatus("100"); 
			apply.setReviewStatus("001"); 
			 //purchase 객체를  @ModelAttribute로 가져왔으니 trancode를 set해줍니다
		
			int buy= apply.getCookStatus();   //사는 상품수를 가져와 buy에 넣어줍니다
			int cookNoo=cook.getCookNo(); //상품번호를 가져와 prodNo에 넣어줍니다
					
			System.out.println(apply);
			applyService.buyCook(buy, cookNoo); //buyProd에 넣어줍니다
			applyService.addApply(apply);
			
			
			ModelAndView modelAndView=new ModelAndView(); //modelAndView 객체생성
			modelAndView.addObject("apply",apply); 
			modelAndView.addObject("cook",cook);//modelAndView 객체에 cook를 넣어줌
			modelAndView.setViewName("forward:/apply/readApply.jsp");
			
			return modelAndView;
		}
		
		//@RequestMapping("/getPurchase.do")
		@RequestMapping( value="getApply" )
		public ModelAndView getApply(@ModelAttribute("search") Search search,HttpServletRequest request,@RequestParam("applyNo") int applyNo
		
				) throws Exception {
			
			System.out.println("/apply/getApply : GET, POST");
			//Business Logic
			
			System.out.println("search:" + search);

			if (search.getCurrentPage() == 0) {
				search.setCurrentPage(1);
			}

			search.setPageSize(pageSize);

			
			Apply apply = applyService.getApply(applyNo);
			Cook cook = cookService.getCook(apply.getClassCook().getCookNo());
			
			apply.setClassCook(cook);
			
			HttpSession session=request.getSession();
			User user = (User)session.getAttribute("user");
			apply.setApplier(user);
			// Model 과 View 연결
			apply.setClassCook(cook);
			
			String category="COOK";
			
			Map map=reviewService.getReviewList(search, category, applyNo);
			
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.setViewName("forward:/apply/getApply.jsp");
			modelAndView.addObject("apply", apply);
			modelAndView.addObject("cook", cook);
			modelAndView.addObject("user", user);
			modelAndView.addObject("review", map.get("list"));

			// 여기서는 value값만 넣어줬다
			
			
			
			return modelAndView;
			
			
			
			
		}
		

		

		
		//@RequestMapping("/updateTranCode.do")
		@RequestMapping( value="updateApplyStatus" )
		public ModelAndView updateApplyStatus( @ModelAttribute("apply") Apply apply,
				@RequestParam("menu") String menu,
				@RequestParam("applyNo") int applyNo) throws Exception{

			System.out.println("/apply/updateApplyStatus : GET,Post");
			//Business Logic
			String applyStatus=apply.getApplyStatus();
			Apply apply1=applyService.getApply(applyNo);
			
		
			
			if(applyStatus.equals("100")) {
				applyStatus="200";
			}
			
			System.out.println("applyStatus후:"+applyStatus);
			
			apply1.setApplyStatus(applyStatus);

			applyService.updateApplyStatus(apply1);
			
			ModelAndView modelAndView=new ModelAndView();
			
			if(applyStatus.equals("000")) {
			modelAndView.setViewName("forward:/apply/listApply");
			}else {
			modelAndView.setViewName("forward:/apply/listSale");
			}
			
			return modelAndView;
		}
		
		//@RequestMapping("/listPurchase.do")
		@RequestMapping( value="listApply" )

		public ModelAndView listApply( @ModelAttribute("search") Search search ,  HttpServletRequest request
				) throws Exception{
			
			System.out.println("/apply/listApply : GET,Post");
			
			if(search.getCurrentPage() ==0 ){
				search.setCurrentPage(1);
			}
			search.setPageSize(pageSize);
			
			HttpSession session=request.getSession();
			User user=(User)session.getAttribute("user");
			
			// Business logic 수행
			Map<String , Object> map=applyService.getApplyList(search,user.getUserId());
			
			Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
			System.out.println(resultPage);
			
			// Model 과 View 연결
			
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("list", map.get("list"));
			modelAndView.addObject("resultPage", resultPage);
			modelAndView.addObject("search", search);
			
			modelAndView.addObject("category", "COOK");
			
			modelAndView.setViewName("forward:/mypage/listApply.jsp");
			
			
			return modelAndView;
		}
		@RequestMapping( value="listMyClass" )

		public ModelAndView listMyClass( @ModelAttribute("search") Search search ,  HttpServletRequest request,@RequestParam("applyNo") int applyNo) throws Exception{
			
			System.out.println("/apply/listMyClass : GET,Post");
			
			if(search.getCurrentPage() ==0 ){
				search.setCurrentPage(1);
			}
			search.setPageSize(pageSize);
			
			Apply apply = applyService.getApply(applyNo);
			Cook cook = cookService.getCook(apply.getClassCook().getCookNo());
			HttpSession session=request.getSession();
			User user=(User)session.getAttribute("user");
			
			// Business logic 수행
			Map<String , Object> map=applyService.getApplyList(search,user.getUserId());
			
			Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
			System.out.println(resultPage);
			
			// Model 과 View 연결
			
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("list", map.get("list"));
			modelAndView.addObject("resultPage", resultPage);
			modelAndView.addObject("search", search);
			modelAndView.addObject("user", user);
			modelAndView.addObject("apply", apply);
			modelAndView.addObject("cook", cook);
			
			modelAndView.setViewName("forward:/apply/listMyClass.jsp");
			
			
			return modelAndView;
		}		
		
		//@RequestMapping("/listSale.do")
		@RequestMapping( value="listSale" )

		public ModelAndView listSale( @ModelAttribute("search") Search search ,  HttpServletRequest request) throws Exception{
			
			System.out.println("/apply/listSale : GET,Post");
			
			if(search.getCurrentPage() ==0 ){
				search.setCurrentPage(1);
			}
			search.setPageSize(pageSize);
			
			HttpSession session=request.getSession();
			User user=(User)session.getAttribute("user");
			
			// Business logic 수행
			Map<String , Object> map=applyService.getApplyList(search,user.getUserId());
			
			Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
			System.out.println(resultPage);
			
			// Model 과 View 연결
			
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("list", map.get("list"));
			modelAndView.addObject("resultPage", resultPage);
			modelAndView.addObject("search", search);
			
			modelAndView.setViewName("forward:/apply/listSale.jsp");
			
			
			return modelAndView;
		}
		@RequestMapping(value="cancel", method=RequestMethod.GET)
		public ModelAndView cancel(@RequestParam("applyNo") int applyNo) throws Exception{

		
			
			Apply apply = applyService.getApply(applyNo);
			
			int buyClass = apply.getCookStatus();
			int cookNo = apply.getClassCook().getCookNo();
			
			applyService.cancel(buyClass, cookNo);
			
			apply.setApplyStatus("000");
			

			applyService.updateApplyStatus(apply);
			
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("/apply/listApply.do");		
			
			
			return modelAndView;
		}
		
		@RequestMapping( value="sale" )

		public ModelAndView sale( @ModelAttribute("search") Search search ,  HttpServletRequest request
				) throws Exception{
			
			System.out.println("/apply/sale : GET,Post");
			
			if(search.getCurrentPage() ==0 ){
				search.setCurrentPage(1);
			}
			search.setPageSize(pageSize);
			
			HttpSession session=request.getSession();
			User user=(User)session.getAttribute("user");
			
			// Business logic 수행
			Map<String , Object> map=applyService.getApplyList(search,user.getUserId());
			
			Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
			System.out.println(resultPage);
			
			// Model 과 View 연결
			
			ModelAndView modelAndView=new ModelAndView();
			modelAndView.addObject("list", map.get("list"));
			modelAndView.addObject("resultPage", resultPage);
			modelAndView.addObject("search", search);
			
			
			
			modelAndView.setViewName("forward:/apply/sale.jsp");
			
			
			return modelAndView;
		}
		
		
}
