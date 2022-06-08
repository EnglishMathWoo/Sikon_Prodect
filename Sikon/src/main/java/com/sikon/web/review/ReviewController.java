package com.sikon.web.review;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sikon.service.domain.Cook;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Purchase;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.Review;
import com.sikon.service.product.ProductService;
import com.sikon.service.purchase.PurchaseService;
import com.sikon.service.review.ReviewService;

@Controller
@RequestMapping("/review/*")
public class ReviewController {

	/// Field
	@Autowired
	@Qualifier("purchaseServiceImpl")
	private PurchaseService purchaseService;

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
	// @Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	// @Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

	@RequestMapping(value = "addReview", method = RequestMethod.POST)
	public String addReview(@ModelAttribute("review") Review review, @RequestParam("category") String category,
			@RequestParam("textNo") int textNo) throws Exception {

		System.out.println("/review/addReview : POST");
		System.out.println("review=" + review);
		System.out.println("category=" + category);
		System.out.println("textNo=" + textNo);

		Recipe recipe = new Recipe();
		Product product = new Product();
		Cook cook = new Cook();

		if (category.equals("COOK")) {
			cook.setCookNo(textNo);
			review.setCook(cook);
		} else if (category.equals("PRD")) {
			product.setProdNo(textNo);
			review.setProduct(product);
		} else {
			recipe.setRecipeNo(textNo);
			review.setRecipe(recipe);
		}

		System.out.println("¸®ºä:" + review);
		reviewService.addReview(review);

		if (category.equals("COOK")) {
			return "forward:/apply/listApply";
		} else if (category.equals("PRD")) {
			return "forward:/purchase/listPurchase";

		} else {
			return "forward:/recipe/getRecipe?recipeNo=" + textNo;
		}

	}

}