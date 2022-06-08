package com.sikon.web.heart;

import java.util.List;
import java.util.Map;
import java.io.File;
import java.io.IOError;
import java.io.IOException;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Heart;
import com.sikon.service.domain.User;
import com.sikon.service.domain.Wish;
import com.sikon.service.domain.Apply;
import com.sikon.service.heart.HeartService;
import com.sikon.service.apply.ApplyService;
import com.sikon.service.cook.CookService;





@Controller
@RequestMapping("/heart/*")
public class HeartController {
	
	
	/// Field
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;
	/// Field
	@Autowired
	@Qualifier("heartServiceImpl")
	private HeartService heartService;

	public HeartController() {
		System.out.println(this.getClass());
	}
	
	@Value("#{commonProperties['pageUnit']}")
	// @Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	// @Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	@ResponseBody
	@RequestMapping( value="updateHeart", method=RequestMethod.POST )
	public int updateHeart(@ModelAttribute("heart") Heart heart,
			@RequestParam("cookNo") int cookNo,
			@RequestParam("userId") String userId
			
			
			) throws Exception {

		int heartCheck = heartService.heartCheck(cookNo, userId);
		if(heartCheck == 0) {
			//좋아요 처음누름
			heartService.insertHeart(cookNo, userId); //heart테이블 삽입
			heartService.updateHeart(cookNo);	//좋아요 +1
			heartService.updateHeartCheck(cookNo, userId);//좋아요 check 1
			System.out.println("하트야 생성되라");
			
		}else if(heartCheck == 1) {
			heartService.updateHeartCheckCancel(cookNo, userId); //heart check0
			heartService.updateHeartCancel(cookNo); //좋아요 - 1
			heartService.deleteHeart(cookNo, userId); //좋아요 삭제
			System.out.println("하트야 삭제되라");
		
		}
		return heartCheck;
	
	}
	
	@RequestMapping("getHeart")
	public String getHeart( @ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception{
		

		System.out.println("/heart/getHeart :  POST/get");
		System.out.println("search:" + search);

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		
	
		search.setPageSize(pageSize);

		search.setPageSize(pageSize);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		// Business logic 수행
		Map<String, Object> map = heartService.getHeart(search, user.getUserId());


		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println(resultPage);
		System.out.println(map);

		System.out.println(map.get("list"));
		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		System.out.println("resultPage는" + resultPage);
		model.addAttribute("search", search);
		
		return "forward:/heart/listHeart.jsp";
	}
	
	
	

}
