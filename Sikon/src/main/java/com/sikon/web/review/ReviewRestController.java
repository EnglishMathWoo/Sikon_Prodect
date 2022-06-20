package com.sikon.web.review;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.Review;
import com.sikon.service.domain.User;
import com.sikon.service.recipe.RecipeService;
import com.sikon.service.review.ReviewService;
import com.sikon.service.user.UserService;

@RestController
@RequestMapping("/review/*")
public class ReviewRestController {

	/// Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;

	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;


	@Autowired
	@Qualifier("reviewServiceImpl")
	private ReviewService reviewService;

	public ReviewRestController() {
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@Value("#{commonProperties['filepath']}")
	String filePath;

	@RequestMapping(value = "/json/addReview",  method = RequestMethod.POST)
	public String addReview(@RequestParam("fileArray") MultipartFile[] fileArray,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("review") Review review,
			@RequestParam("recipeNo") int recipeNo, Model model) throws Exception {
		
		System.out.println("/review/addReview : POST");
		

			
		System.out.println(fileArray[0]);
		System.out.println("review="+review);
		System.out.println("textNo="+recipeNo);
		
		Recipe recipe = recipeService.getRecipeName(recipeNo);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		String FILE_SERVER_PATH = "C:\\Users\\wnstn\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\";

		//String FILE_SERVER_PATH = filePath;
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
		
		review.setRecipe(recipe);
		review.setReviewContent(review.getReviewContent());
		review.setWriterNickname(user.getUserNickname());
		review.setReviewCategory("REC");
		
		System.out.println("리뷰:" + review);
		reviewService.addReview(review);
		reviewService.updateReviewNum(1,recipeNo);
		String content=review.getReviewContent();
		return content;
	}

//
//	@RequestMapping(value = "updateReview", method = RequestMethod.POST)
//	public String updateReview(@ModelAttribute("review") Review review, Model model, HttpServletRequest request)
//			throws Exception {
//		System.out.println("/review/updateReview : POST");
////		System.out.println("review=" + review);
//
//		model.addAttribute("msg", "리뷰 수정이 완료되었습니다.");
//		model.addAttribute("url", "/review/updateReview.jsp");
//
//		reviewService.updateReview(review);
//
//		return "forward:/review/test.jsp";
//	}
//
//	// 내가 쓴 리뷰(마이페이지)
//	@RequestMapping(value = "listMyReview")
//	public ModelAndView listMyRecipe(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
//			throws Exception {
//
//		System.out.println("/review/listMyReview :  POST/get");
//
////		System.out.println("search:" + search);
//
//		if (search.getCurrentPage() == 0) {
//			search.setCurrentPage(1);
//		}
//
//		search.setPageSize(10);
//
//		HttpSession session = request.getSession();
//		User user = (User) session.getAttribute("user");
//
//		Map<String, Object> map = reviewService.getMyReviewList(search, user.getUserNickname());
//
//		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit, 10);
//
////		System.out.println("list=" + map.get("list"));
////		System.out.println("resultPage=" + resultPage);
//
//		// Model 과 View 연결
//		ModelAndView modelAndView = new ModelAndView();
//		modelAndView.addObject("list", map.get("list"));
//		modelAndView.addObject("resultPage", resultPage);
//		modelAndView.addObject("search", search);
//		modelAndView.setViewName("forward:/mypage/listMyReview.jsp");
//
//		return modelAndView;
//	}
//
	// 리뷰 삭제
	@RequestMapping(value = "/json/deleteReview")
	public void deleteReview(@RequestParam("recipeNo") int recipeNo,@RequestParam("reviewNo") int reviewNo) throws Exception {

		System.out.println("/review/deleteReview 가보자고 : POST");

			reviewService.deleteReview(reviewNo);
			reviewService.updateReviewNum(-1,recipeNo);


	}
}