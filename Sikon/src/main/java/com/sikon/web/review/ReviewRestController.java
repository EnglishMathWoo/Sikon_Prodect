package com.sikon.web.review;

import java.io.File;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
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
import org.springframework.web.multipart.MultipartHttpServletRequest;

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
	public void addReview(HttpServletRequest request,@ModelAttribute("review") Review review,
			@RequestParam("recipeNo") int recipeNo, Model model) throws Exception {
		
		System.out.println("/review/addReview : POST");
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println(recipeNo);
		System.out.println(review);
		
		Recipe recipe = recipeService.getRecipeName(recipeNo);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		review.setRecipe(recipe);
		review.setReviewContent(review.getReviewContent());
		review.setWriterNickname(user.getUserNickname());
		review.setReviewCategory("REC");
		
		System.out.println("¸®ºä:" + review);
		reviewService.addReview(review);
		reviewService.updateReviewNum(1,recipeNo);
	}

	
	
	
	
	
	
	
//	@RequestMapping(value = "/json/addReview",  method = RequestMethod.POST)
//	public void addReview(@RequestParam("fileArray") MultipartFile[] fileArray,HttpServletRequest request, HttpServletResponse response,@ModelAttribute("review") Review review,
//			@RequestParam("recipeNo") int recipeNo, Model model) throws Exception {
//		
//		System.out.println("/review/addReview : POST");
//		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
//		System.out.println(recipeNo);
//		
//
//			
////		System.out.println(fileArray[0]);
////		System.out.println("review="+review);
////		System.out.println("textNo="+recipeNo);
////		
////		Recipe recipe = recipeService.getRecipeName(recipeNo);
////		HttpSession session = request.getSession();
////		User user = (User) session.getAttribute("user");
////		
////		String FILE_SERVER_PATH = "C:\\Users\\wnstn\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\";
//
//		//String FILE_SERVER_PATH = filePath;
////		String newFileName = "";
////
////		for (int i = 0; i < fileArray.length; i++) {
////
////			if (!fileArray[i].getOriginalFilename().isEmpty()) {
////				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
////				model.addAttribute("msg", "File uploaded successfully.");
////
////			} else {
////				model.addAttribute("msg", "Please select a valid mediaFile..");
////			}
////
////			newFileName += fileArray[i].getOriginalFilename();
////
////		}
////
////		review.setReviewImg(newFileName);
////		
////		review.setRecipe(recipe);
////		review.setReviewContent(review.getReviewContent());
////		review.setWriterNickname(user.getUserNickname());
////		review.setReviewCategory("REC");
//		
//		System.out.println("¸®ºä:" + review);
////		reviewService.addReview(review);
////		reviewService.updateReviewNum(1,recipeNo);
////		String content=review.getReviewContent();
////		return content;
//	}
	
	

	@RequestMapping(value = "/json/updateReview", method = RequestMethod.POST)
	public void updateReview(HttpServletRequest request,@ModelAttribute("review") Review review,@RequestParam("recipeNo") int recipeNo, Model model)
			throws Exception {
		System.out.println("/review/updateReview : POST");
		System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println("review=" + review);
		System.out.println("recipeNo=" + recipeNo);

		Recipe recipe = recipeService.getRecipeName(recipeNo);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		review.setRecipe(recipe);
		review.setReviewContent(review.getReviewContent());
		review.setWriterNickname(user.getUserNickname());
		review.setReviewCategory("REC");
		
		reviewService.updateReview(review);

	}

	
	// ¸®ºä »èÁ¦
	@RequestMapping(value = "/json/deleteReview")
	public void deleteReview(@RequestParam("recipeNo") int recipeNo,@RequestParam("reviewNo") int reviewNo) throws Exception {

		System.out.println("/review/deleteReview °¡º¸ÀÚ°í : POST");

			reviewService.deleteReview(reviewNo);
			reviewService.updateReviewNum(-1,recipeNo);


	}
}