package com.sikon.web.review;

import java.io.File;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.cook.CookService;
import com.sikon.service.domain.Cook;
import com.sikon.service.domain.Point;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.Review;
import com.sikon.service.domain.User;
import com.sikon.service.point.PointService;
import com.sikon.service.product.ProductService;
import com.sikon.service.recipe.RecipeService;
import com.sikon.service.review.ReviewService;
import com.sikon.service.user.UserService;

@Controller
@RequestMapping("/review/*")
public class ReviewController {

	/// Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

	@Autowired
	@Qualifier("pointServiceImpl")
	private PointService pointService;

	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;

	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;

	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;

	@Autowired
	@Qualifier("reviewServiceImpl")
	private ReviewService reviewService;

	public ReviewController() {
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@Value("#{commonProperties['filepath']}")
	String filePath;

	@RequestMapping(value = "addReview", method = RequestMethod.POST)
	public ModelAndView addReview(@RequestParam("fileArray") MultipartFile[] fileArray,
			@ModelAttribute("review") Review review, @RequestParam("category") String category,
			@RequestParam("textNo") int textNo, Model model, HttpServletRequest request) throws Exception {

		System.out.println("/review/addReview : POST");
		System.out.println("review=" + review);
		System.out.println("category=" + category);
		System.out.println("textNo=" + textNo);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		// 리뷰 작성시 일반리뷰: 100원, 포토리뷰: 500원 적립금
		Point point = new Point();
		point.setUserId(user.getUserId());
		point.setPointType("EARN");
		point.setPointCategory("RE");
		
		if (category.equals("COOK") || category.equals("PRD")) {
			if (review.getReviewImg() == null ||review.getReviewImg()=="") {
				point.setPointScore(100);
			} else {
				point.setPointScore(500);
			}
			pointService.addPoint(point);

		}
		
		String FILE_SERVER_PATH = filePath;
		String newFileName = "";

		for (int i = 0; i < fileArray.length; i++) {

			if (!fileArray[i].getOriginalFilename().isEmpty()) {
				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
				model.addAttribute("msg", "File uploaded successfully.");

			} else {
				model.addAttribute("msg", "Please select a valid mediaFile..");
			}

			newFileName += fileArray[i].getOriginalFilename();

		}

		review.setReviewImg(newFileName);
		

		if (category.equals("COOK")) {
			Cook cook = cookService.getCook(textNo);
			review.setCook(cook);
		} else if (category.equals("PRD")) {
			Product product = productService.getProduct(textNo);
			review.setProduct(product);
		} else {
			Recipe recipe = recipeService.getRecipeName(textNo);
			review.setRecipe(recipe);
		}

		review.setWriterNickname(user.getUserNickname());
		review.setReviewCategory(category);

		System.out.println("리뷰:" + review);
		reviewService.addReview(review);

		System.out.println("가나");
		reviewService.updateStatus(textNo, category);
		System.out.println("가나");


		ModelAndView modelAndView = new ModelAndView();
		if (category.equals("REC")) {
			modelAndView.addObject(review);
			modelAndView.setViewName("forward:/recipe/getRecipe?recipeNo=" + textNo);
		}
		return modelAndView;
	}

	@RequestMapping(value = "updateReview", method = RequestMethod.GET)
	public ModelAndView updateReview(@RequestParam("reviewNo") int reviewNo, HttpServletRequest request)
			throws Exception {
		System.out.println("/review/updateReview : GET");
		System.out.println("reviewNo=" + reviewNo);

		Review review = reviewService.getReview(reviewNo);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject(review);
		modelAndView.setViewName("forward:/review/updateReview.jsp");

		return modelAndView;
	}

	@RequestMapping(value = "updateReview", method = RequestMethod.POST)
	public String updateReview(@ModelAttribute("review") Review review, Model model, HttpServletRequest request)
			throws Exception {
		System.out.println("/review/updateReview : POST");
		System.out.println("review=" + review);

		model.addAttribute("msg", "리뷰 수정이 완료되었습니다.");
		model.addAttribute("url", "/review/updateReview.jsp");

		reviewService.updateReview(review);

		return "forward:/review/test.jsp";
	}

	// 내가 쓴 리뷰(마이페이지)
	@RequestMapping(value = "listMyReview")
	public ModelAndView listMyRecipe(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/review/listMyReview :  POST/get");

		System.out.println("search:" + search);

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(10);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		Map<String, Object> map = reviewService.getMyReviewList(search, user.getUserNickname());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, 10);

		System.out.println("list=" + map.get("list"));
		System.out.println("resultPage=" + resultPage);

		// Model 과 View 연결
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		modelAndView.setViewName("forward:/mypage/listMyReview.jsp");

		return modelAndView;
	}

	// 리뷰 선택 삭제
	@RequestMapping(value = "deleteReview")
	public String deleteReview(@RequestParam("checkList") int[] reviewList) throws Exception {

		System.out.println("/review/deleteReview : POST");

		for (int i = 0; i < reviewList.length; i++) {
			System.out.println(reviewList[i]);
		}

		for (int i = 0; i < reviewList.length; i++) {
			reviewService.deleteReview(reviewList[i]);
		}

		return "redirect:/review/listMyReview";

	}
}