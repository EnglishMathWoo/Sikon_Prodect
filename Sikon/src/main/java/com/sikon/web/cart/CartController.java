package com.sikon.web.cart;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.User;
import com.sikon.service.domain.Cart;
import com.sikon.service.user.UserService;
import com.sikon.service.cart.CartService;


//==> 회원관리 Controller
@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	///Field
	@Autowired
	@Qualifier("cartServiceImpl")
	private CartService cartService;
	
		
	public CartController(){
		System.out.println(this.getClass());
	}
	
	
	
	@RequestMapping("addCart")
	public String addCart( @ModelAttribute("cart") Cart cart) throws Exception {

		System.out.println("/addCart");
		System.out.println("userId : "+cart.getUserId());
		
		cartService.addCart(cart);
		
		return "redirect:/product/getProduct?menu=search&prodNo="+cart.getCartProd().getProdNo();
	}
	
	
	@RequestMapping("getCartList")
	public String getCartList( HttpSession session, Model model) throws Exception{
		
		System.out.println("/getCartList");
		
		User user = (User) session.getAttribute("user");
		String userId = user.getUserId();
		System.out.println(userId);
		
		List<Cart> list = cartService.getCartList(userId);
		
		
		// Model 과 View 연결
		model.addAttribute("Cart", list);
		
		return "forward:/cart/cart.jsp";
	}
	/*
	@RequestMapping("updatecart")
	public String updateCart( @RequestParam("cartNo") int cartNo, @RequestParam("buyNum") int buyNum, HttpSession session) throws Exception{
		
		System.out.println("/updateCart");
		
		User user = (User) session.getAttribute("user");
		String userid = user.getUserId();
		
		
		cartService.updateCart(cart);
		
		System.out.println("userId: "+userid);
		
		return "redirect:/cart/getcart";
	}
	*/
	@RequestMapping("deleteCart")
	public String deleteCart( @RequestParam("wishNo") int wishNo, Model model, HttpSession session) throws Exception{
		
		System.out.println("/deleteCart");
		
		User user = (User) session.getAttribute("user");
		cartService.deleteCart(wishNo);
		
		
		return "redirect:/cart/getCart";
	}

}