package com.sikon.web.review;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sikon.service.apply.ApplyService;
import com.sikon.service.domain.Cook;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.Review;
import com.sikon.service.domain.User;
import com.sikon.service.product.ProductService;
import com.sikon.service.purchase.PurchaseService;
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
	@Qualifier("applyServiceImpl")
	private ApplyService applyService;
	
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
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@RequestMapping(value = "addReview", method = RequestMethod.POST)
	public void addReview(@ModelAttribute("review") Review review, @RequestParam("category") String category,
			@RequestParam("textNo") int textNo,HttpServletRequest request) throws Exception {

		System.out.println("/review/addReview : POST");
		System.out.println("review=" + review);
		System.out.println("category=" + category);
		System.out.println("textNo=" + textNo);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
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

		review.setWriterNickname(user.getUserNickname());
		review.setReviewCategory(category);
		
		System.out.println("¸®ºä:" + review);
		reviewService.addReview(review);
		
		// ¸®ºä ÀÛ¼º½Ã ÀÏ¹Ý¸®ºä: 100¿ø, Æ÷Åä¸®ºä: 500¿ø Àû¸³±Ý
		if(review.getReviewImg()!=null ||review.getReviewImg()!="") {
			user.setHoldpoint(user.getHoldpoint()+500);
		}else {
			user.setHoldpoint(user.getHoldpoint()+100);
		}
		userService.updateUser(user);
		session.setAttribute("user",user);
		
		reviewService.updateStatus(textNo, category);
	}
	
	

}