package com.sikon.web.cart;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.service.domain.User;
import com.sikon.service.domain.Cart;
import com.sikon.service.cart.CartService;


//==> 회원관리 RestController
@RestController
@RequestMapping("/cart/*")
public class CartRestController {
	
	///Field
	@Autowired
	@Qualifier("cartServiceImpl")
	private CartService cartService;
	//setter Method 구현 않음
		
	public CartRestController(){
		System.out.println(this.getClass());
	}
	
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	
	
	
	@RequestMapping( value="json/updateCart")
	public String updateCart( @RequestParam("cartNo") int cartNo, @RequestParam("quantity") int quantity) throws Exception{
		
		System.out.println("json/updateCart");
		
		Cart cart = cartService.getCart(cartNo);
		cart.setQuantity(quantity);
		
		cartService.updateCart(cart);
		
		
		return "redirect:/cart/getCartList";
	}
	
	
}