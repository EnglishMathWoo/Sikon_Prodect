package com.sikon.web.cart;

import java.util.ArrayList;
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
import com.sikon.service.product.ProductService;
import com.sikon.service.domain.Cart;
import com.sikon.service.user.UserService;
import com.sikon.service.cart.CartService;



@Controller
@RequestMapping("/cart/*")
public class CartController {
	
	///Field
	@Autowired
	@Qualifier("cartServiceImpl")
	private CartService cartService;
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	
		
	public CartController(){
		System.out.println(this.getClass());
	}
	
	
	//장바구니 목록 가져오기
	@RequestMapping("getCartList")
	public String getCartList( HttpSession session, Model model) throws Exception{
		
		System.out.println("/getCartList");
		
		User user = (User) session.getAttribute("user");
		String userId = user.getUserId();
		
		List<Cart> list = cartService.getCartList(userId);
		List prodlist = new ArrayList();
		
		for(Cart cart : list) {
			Product product = new Product();
			product = productService.getProduct(cart.getCartProd().getProdNo());
			
			
			prodlist.add(product);
		}
		
		model.addAttribute("Cart", list);
		model.addAttribute("prodlist", prodlist);
		
		return "forward:/cart/cart.jsp";
	}

	
	
	//장바구니에서 단일삭제
	@RequestMapping("deleteCart")
	public String deleteCart( @RequestParam("cartNo") int cartNo, Model model, HttpSession session) throws Exception{
		
		System.out.println("/deleteCart");
		
		User user = (User) session.getAttribute("user");
		cartService.deleteCart(cartNo);
		
		
		return "redirect:/cart/getCartList";
	}
	
	
	//장바구니에서 선택상품 삭제하기
	@RequestMapping("deleteSelect")
	public String deleteSelect( @RequestParam("cartNo") int[] cartNo) throws Exception{
		
		System.out.println("/deleteSelect");
		
		for(int cart : cartNo) {
			
			cartService.deleteCart(cart);
			
		}
				
		return "redirect:/cart/getCartList";
	}

}