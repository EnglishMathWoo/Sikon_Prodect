package com.sikon.web.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.Review;
import com.sikon.service.domain.User;
import com.sikon.service.recipe.RecipeService;
import com.sikon.service.review.ReviewService;

//¸®ºä RestController
@RestController
@RequestMapping("/review/*")
public class ReviewRestController {

	/// Field
	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;

	@Autowired
	@Qualifier("reviewServiceImpl")
	private ReviewService reviewService;

	public ReviewRestController() {
		System.out.println(this.getClass());
	}

	/// Method
	@RequestMapping(value = "/json/addReview", method = RequestMethod.POST)
	public void addReview(HttpServletRequest request, @ModelAttribute("review") Review review,
			@RequestParam("recipeNo") int recipeNo, Model model) throws Exception {

		System.out.println("/review/json/addReview : POST");

		Recipe recipe = recipeService.getRecipeName(recipeNo);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		review.setRecipe(recipe);
		review.setReviewContent(review.getReviewContent());
		review.setWriterNickname(user.getUserNickname());
		review.setReviewCategory("REC");

		reviewService.addReview(review);

		// ·¹½ÃÇÇÀÇ ¸®ºä¼ö(reviewNum) +1
		reviewService.updateReviewNum(1, recipeNo);
	}

	@RequestMapping(value = "/json/updateReview", method = RequestMethod.POST)
	public void updateReview(HttpServletRequest request, @ModelAttribute("review") Review review,
			@RequestParam("recipeNo") int recipeNo, Model model) throws Exception {

		System.out.println("/review/json/updateReview : POST");

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
	public void deleteReview(@RequestParam("recipeNo") int recipeNo, @RequestParam("reviewNo") int reviewNo)
			throws Exception {

		System.out.println("/review/json/deleteReview : POST");

		reviewService.deleteReview(reviewNo);
		reviewService.updateReviewNum(-1, recipeNo);

	}
}