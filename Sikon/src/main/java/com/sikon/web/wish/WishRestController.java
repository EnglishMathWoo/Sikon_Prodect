package com.sikon.web.wish;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.service.domain.User;

import com.sikon.service.cook.CookService;
import com.sikon.service.domain.Wish;

import com.sikon.service.domain.Cook;
import com.sikon.service.wish.WishService;



@RestController
@RequestMapping("/wish/*")
public class WishRestController {
	
	
	@Autowired
	@Qualifier("wishServiceImpl")
	private WishService wishService;
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;
	
public WishRestController(){
	System.out.println(this.getClass());
}

@Value("#{commonProperties['pageUnit']}")
int pageUnit;
@Value("#{commonProperties['pageSize']}")
int pageSize;

@RequestMapping( value="json/updateWish")
public String updateWish( @RequestParam("wishNo") int wishNo, @RequestParam("cookStatus") int cookStatus) throws Exception{
	
	System.out.println("json/updateWish");
	
	Wish wish = wishService.getWishList(wishNo);
	wish.setCookStatus(cookStatus);
	
	wishService.updateWish(wish);
	
	
	return "redirect:/wish/listWish";
}



}
