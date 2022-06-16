package com.sikon.web.love;

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
import com.sikon.service.love.LoveService;
import com.sikon.service.ranking.RankingService;
import com.sikon.service.domain.Love;

import com.sikon.service.domain.User;
import com.sikon.service.user.UserService;

@Controller
@RequestMapping("/love/*")
public class LoveController {

	/// Field
	@Autowired
	@Qualifier("loveServiceImpl")
	private LoveService loveService;

	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	
	@Autowired
	@Qualifier("rankingServiceImpl")
	private RankingService rankingService;

	public LoveController() {
		System.out.println("love시작~");
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@RequestMapping(value = "addLove")
	public String addlove(@ModelAttribute("love") Love love, 
			HttpServletRequest request,@RequestParam("userNickname") String userNickname) throws Exception {

		System.out.println("/love/addlove : POST");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		System.out.println(user);

		love.setUserNickname(userNickname);
		love.setUserId(user.getUserId());

		loveService.addLove(love.getUserNickname(),love.getUserId());
		rankingService.addLoveMentor(love.getUserNickname(),love.getUserId());

		return "forward:/mypage/listLove.jsp";
	}

	@RequestMapping(value = "listLove")
	public String listlove(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/love/listlove :  POST/get");
		System.out.println("search:" + search);
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		// Business logic 수행
		Map<String, Object> map = loveService.getLoveList(search, user.getUserId());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println("resultPage=" + resultPage);

		System.out.println("list" + map.get("list"));

		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/mypage/listLove.jsp";
	}


//	@RequestMapping(value = "deleteLove")
//	public String deletelove(@RequestParam("loveList") int[] loveList,HttpServletRequest request) throws Exception {
//
//		System.out.println("/love/deletelove : POST");
//		
//		HttpSession session = request.getSession();
//		User user = (User) session.getAttribute("user");
//
//		for (int i = 0; i < loveList.length; i++) {
//			System.out.println(loveList[i]);
//		}
//
//		for (int i = 0; i < loveList.length; i++) {
//			loveService.deleteLove(loveList[i],user.getUserId());
//		}
//
//		return "redirect:/mypage/listlove";
//	}

}