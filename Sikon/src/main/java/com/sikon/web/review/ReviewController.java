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

//리뷰 Controller
@Controller
@RequestMapping("/review/*")
public class ReviewController {

	/// Field
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

	/// Method
	@RequestMapping(value = "addReview", method = RequestMethod.POST)
	public String addReview(@RequestParam("fileArray") MultipartFile[] fileArray,
			@ModelAttribute("review") Review review, @RequestParam("category") String category,
			@RequestParam("textNo") int textNo, @RequestParam("textNo2") int textNo2, Model model,
			HttpServletRequest request) throws Exception {

		System.out.println("/review/addReview : POST");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		// 리뷰 작성시 일반리뷰: 100, 포토리뷰: 500 포인트 적립
		Point point = new Point();

		int totalpoint = 0;

		point.setUserId(user.getUserId());
		point.setPointType("EARN");
		point.setPointCategory("REV");

		int pointt = 0;
		if (category.equals("COOK") || category.equals("PRD")) {
			if (fileArray.length == 0) {
				point.setPointScore(100);
				totalpoint = user.getHoldpoint() + 100;
			} else {
				point.setPointScore(500);
				totalpoint = user.getHoldpoint() + 500;
			}
		}

		// 다중파일 업로드
		// String FILE_SERVER_PATH = filePath;
		String FILE_SERVER_PATH = "C:\\sikon\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\";

		String newFileName = "";

		for (int i = 0; i < fileArray.length; i++) {

			if (!fileArray[i].getOriginalFilename().isEmpty()) {
				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
			}
			newFileName += fileArray[i].getOriginalFilename();
		}
		review.setReviewImg(newFileName);

		// 카테고리 구분 textNo = prodNo / cookNo / recipeNo, textNo2 = tranNo / applyNo
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

		// 리뷰등록
		reviewService.addReview(review);

		// 주문 상품(purchase), 완료 쿠킹클래스(apply)에 대한 리뷰 상태 업데이트
		reviewService.updateStatus(textNo2, category);

		// 리뷰 작성 포인트 적립
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint, user.getUserId());

		model.addAttribute("user", user);

		return "forward:/review/closepage.jsp";
	}

	@RequestMapping(value = "updateReview", method = RequestMethod.GET)
	public String updateReview(@RequestParam("reviewNo") int reviewNo, Model model) throws Exception {
		System.out.println("/review/updateReview : GET");

		Review review = reviewService.getReview(reviewNo);

		model.addAttribute(review);

		return "forward:/review/updateReview.jsp";
	}

	@RequestMapping(value = "updateReview", method = RequestMethod.POST)
	public String updateReview(@ModelAttribute("review") Review review, Model model, HttpServletRequest request)
			throws Exception {
		System.out.println("/review/updateReview : POST");

		reviewService.updateReview(review);

		return "forward:/review/test.jsp";
	}

	// 내가 쓴 리뷰(마이페이지)
	@RequestMapping(value = "listMyReview")
	public ModelAndView listMyRecipe(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/review/listMyReview :  POST/get");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(10);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		Map<String, Object> map = reviewService.getMyReviewList(search, user.getUserNickname());

		// 한 페이지에 리뷰 10개씩 나오도록 pageSize:10
		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, 10);

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
			reviewService.deleteReview(reviewList[i]);
		}

		return "redirect:/review/listMyReview";

	}
}