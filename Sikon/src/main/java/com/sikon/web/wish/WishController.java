package com.sikon.web.wish;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sikon.service.domain.User;
import com.sikon.service.domain.Wish;
import com.sikon.service.wish.WishService;




@Controller
@RequestMapping("/wish/*")
public class WishController {

	/// Field
	@Autowired
	@Qualifier("wishServiceImpl")
	private WishService wishService;

	public WishController() {
		System.out.println(this.getClass());
	}
	
	

	
	
	@RequestMapping("getWish")
	public String getWish(HttpSession session,  Model model) throws Exception{
		
		
		User user = (User) session.getAttribute("user");
		String userId = user.getUserId();
		
		List<Wish> list = wishService.getWish(userId);
		
		
		
		model.addAttribute("wish", list);
		
		return "forward:/wish/listWish.jsp";
	}
	

	
	@RequestMapping("deleteWish")
	public String deleteWish( @RequestParam("wishNo") int wishNo, Model model, HttpSession session) throws Exception{
		
	
		
		User user = (User) session.getAttribute("user");
		wishService.deleteWish(wishNo);
		
		
		return "redirect:/wish/getWish";
	}
	
	@RequestMapping("deleteSelect")
	public String deleteSelect( @RequestParam("wishNo") int[] wishNo) throws Exception{
		
	
		
		for(int wish : wishNo) {
			
			wishService.deleteWish(wish);
			
		}
				
		return "redirect:/wish/getWish";
	}

}