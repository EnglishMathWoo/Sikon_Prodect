package com.sikon.web.cook;

import java.util.Map;

import java.io.File;
import java.io.IOError;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Cook;
import com.sikon.service.domain.User;
import com.sikon.service.domain.Wish;
import com.sikon.service.domain.Heart;
import com.sikon.service.domain.Love;
import com.sikon.service.heart.HeartService;
import com.sikon.service.love.LoveService;
import com.sikon.service.recipe.RecipeService;
import com.sikon.service.review.ReviewService;
import com.sikon.service.cook.CookService;
import com.sikon.service.user.UserService;

@Controller
@RequestMapping("/cook/*")

public class CookController {

	/// Field
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;

	/// Field
	@Autowired
	@Qualifier("heartServiceImpl")
	private HeartService heartService;

	/// Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

	/// Field
	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;

	@Autowired
	@Qualifier("reviewServiceImpl")
	private ReviewService reviewService;
	@Autowired
	@Qualifier("loveServiceImpl")
	private LoveService loveService;

	public CookController() {
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	// @Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	// @Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

	@RequestMapping(value = "addCook	", method = RequestMethod.GET)
	public String addCook(HttpSession session, Model model) throws Exception {

		System.out.println("/cook/addCook : GET");

		String userId = (String) session.getAttribute("user");

		User user = userService.getUser(userId);

		model.addAttribute("user", user);

		return "redirect:/cook/addCook.jsp";
	}

	@RequestMapping(value = "addCook", method = RequestMethod.POST)

	public String addCook(@ModelAttribute("cook") Cook cook, Model model,
			@RequestParam("uploadfile") MultipartFile[] fileArray, HttpServletRequest request) throws Exception {

		String cookFilename = "";
		// String FILE_SERVER_PATH =
		// "C:\\Users\\bitcamp\\git\\Mini-PJT-Refactoring\\11.Model2MVCShop\\src\\main\\webapp\\images\\uploadFiles";
		String FILE_SERVER_PATH = "C:\\Users\\bitcamp\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles";
		// String FILE_SERVER_PATH =
		// "C:\\Users\\sweet\\git\\Sikon_Project\\Sikon\\src\\main\\webapp\\images\\uploadFiles";

		for (int i = 0; i < fileArray.length; i++) {

			if (!fileArray[i].getOriginalFilename().isEmpty()) {
				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
				model.addAttribute("msg", "File uploaded successfully.");

			} else {
				model.addAttribute("msg", "Please select a valid mediaFile..");
			}

			cookFilename += fileArray[i].getOriginalFilename() + "/";

		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		// 취소는 초기 상태값을 0으로 준다

		System.out.println(cook);
		cook.setMentor(user);
		cook.setCookFilename(cookFilename);

		cookService.addCook(cook);
		model.addAttribute(cook);

		return "forward:/cook/readCook.jsp";
	}

	@RequestMapping(value = "getCook", method = RequestMethod.GET)
	public String getCook(@ModelAttribute("search") Search search, @RequestParam("cookNo") int cookNo,
			@RequestParam("menu") String menu, @CookieValue(value = "history", required = false) Cookie cookie,
			HttpServletResponse response, Model model,HttpServletRequest request) throws Exception {

		System.out.println("getCook");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);
		Map map = reviewService.getReviewList(search, "COOK", cookNo);
		int reviewNum=reviewService.countReviewNum(cookNo, "COOK");
		System.out.println("리뷰수"+reviewNum);
		Cook cook = cookService.getCook(cookNo);
		
		
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
	
		
			int heartCount = heartService.heartCheck(cookNo, user.getUserId());
			cook.setHeartCount(heartCount);
			
		
		
		model.addAttribute("cook", cook);
		model.addAttribute("menu", menu);
		model.addAttribute("review", map.get("list"));
		model.addAttribute("reviewNum", reviewNum);

		String history = "/" + cookNo;

		if (cookie != null) {
			cookie.setValue(cookie.getValue() + history);
		} else {
			cookie = new Cookie("history", history);
		}
		cookie.setPath("/");
		cookie.setMaxAge(3600);
		response.addCookie(cookie);

		return "forward:/cook/getCook.jsp";
	}

	@RequestMapping(value = "updateCook", method = RequestMethod.GET)
	public String updateCook(@RequestParam("cookNo") int cookNo, Model model) throws Exception {

		Cook cook = cookService.getCook(cookNo);

		model.addAttribute("cook", cook);

		return "forward:/cook/updateCook.jsp";
	}

	@RequestMapping(value = "updateCook", method = RequestMethod.POST)
	public String updateProduct(@ModelAttribute("cook") Cook cook, Model model, HttpSession session,
			@RequestParam("uploadfile") MultipartFile[] fileArray) throws Exception {

		String cookFilename = "";
		// String FILE_SERVER_PATH =
		// "C:\\Users\\bitcamp\\git\\Mini-PJT-Refactoring\\11.Model2MVCShop\\src\\main\\webapp\\images\\uploadFiles";
		// String FILE_SERVER_PATH =
		// "C:\\workspace(1)\\Sikon-PJT\\11.Model2MVCShop\\src\\main\\webapp\\images\\uploadFiles";
		// String FILE_SERVER_PATH =
		// "C:\\Users\\sweet\\git\\Sikon_Project\\Sikon\\src\\main\\webapp\\images\\uploadFiles";
		String FILE_SERVER_PATH = "C:\\Users\\bitcamp\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles";
		for (int i = 0; i < fileArray.length; i++) {

			if (!fileArray[i].getOriginalFilename().isEmpty()) {
				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
				model.addAttribute("msg", "File uploaded successfully.");

			} else {
				model.addAttribute("msg", "Please select a valid mediaFile..");
			}

			cookFilename += fileArray[i].getOriginalFilename() + "/";

		}

		cook.setCookFilename(cookFilename);

		cookService.updateCook(cook);

		return "forward:/cook/getCook.jsp?cookNo=" + cook.getCookNo();
	}

	@RequestMapping(value = "listCook")
	public String listCook(@ModelAttribute("search") Search search,	@RequestParam("menu") String menu, Model model, HttpServletRequest request) throws Exception {

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		// Business logic 수행
		Map<String, Object> map = cookService.getCookList(search);

		List<Cook> cookList = (List<Cook>) map.get("list");
		
		

		for (int i = 0; i < cookList.size(); i++) {
			int heartCount = heartService.heartCheck(cookList.get(i).getCookNo(), user.getUserId());
			cookList.get(i).setHeartCount(heartCount);
			cookList.set(i, cookList.get(i));
		}

		System.out.println(cookList);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println(map.get("list"));

		model.addAttribute("list", cookList);
		System.out.println(map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		model.addAttribute("user", user);

		return "forward:/cook/listCook.jsp?menu=" + menu;
	}

	@RequestMapping(value = "listMyCook")
	public ModelAndView listMyCook(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/cook/listMyCook :  POST/get");
		System.out.println("search:" + search);
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		// Business logic 수행
		Map<String, Object> map = cookService.listMyCook(search, user.getUserNickname());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println(resultPage);

		ModelAndView modelAndView = new ModelAndView();
		
		
		modelAndView.addObject("list", map.get("list"));


		modelAndView.addObject("resultPage", resultPage);

		modelAndView.addObject("search", search);

		modelAndView.setViewName("forward:/cook/listMyCook.jsp");

		return modelAndView;
	}

	@RequestMapping(value = "/deleteCook", method = RequestMethod.GET)
	public String deleteCook(@RequestParam("checkCount") int checkCount, @RequestParam("checkList") int[] checkList)
			throws Exception {

		System.out.println("/cook/deleteCook : GET");

		// Business Logic
		for (int i = 0; i < checkCount; i++) {
			cookService.deleteCook(checkList[i]);
		}

		return "forward:/cook/listCook?menu=search";
	}

	@RequestMapping(value = "mentor")
	public ModelAndView mentor(@RequestParam("mentorId") String mentorId,@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/cook/mentor :  POST/get");
		System.out.println("search:" + search);
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);
		
		System.out.println("!$#@%%%@!");
		System.out.println(mentorId);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		User mentor = userService.getUser(mentorId);
		
		
	
		// Business logic 수행
		Map<String, Object> map = cookService.listMyCook(search, mentor.getUserNickname());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println(resultPage);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("user", user);		
		modelAndView.addObject("mentor", mentor);
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);

		modelAndView.setViewName("forward:/cook/metorChannerl.jsp");

		return modelAndView;
	}

	@RequestMapping(value = "manageCook")
	public String manageCook(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		// Business logic 수행
		Map<String, Object> map = cookService.getCookList(search);

		List<Cook> cookList = (List<Cook>) map.get("list");

		for (int i = 0; i < cookList.size(); i++) {
			int heartCount = heartService.heartCheck(cookList.get(i).getCookNo(), user.getUserId());
			cookList.get(i).setHeartCount(heartCount);
			cookList.set(i, cookList.get(i));
		}

		System.out.println(cookList);
		System.out.println("김태호");

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println(map.get("list"));
		System.out.println("^^^^^^^^^^^");

		model.addAttribute("list", cookList);
		System.out.println(map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		model.addAttribute("user", user);

		return "forward:/cook/manageCook.jsp";
	}
	

}
