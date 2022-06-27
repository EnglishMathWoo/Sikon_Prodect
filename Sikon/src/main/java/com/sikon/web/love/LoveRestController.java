package com.sikon.web.love;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.service.domain.Love;
import com.sikon.service.love.LoveService;
import com.sikon.service.ranking.RankingService;


@RestController
@RequestMapping("/love/*")
public class LoveRestController {
	
	/// Field
	@Autowired
	@Qualifier("loveServiceImpl")
	private LoveService loveService;
	
	@Autowired
	@Qualifier("rankingServiceImpl")
	private RankingService rankingService;
	
	public LoveRestController() {
		System.out.println(this.getClass());
	}	

	
	@RequestMapping( value="json/updateLove", method=RequestMethod.POST )
	public int updateHeart(@ModelAttribute("love") Love love, @RequestParam("userNickname") String userNickname, 
			@RequestParam("userId") String userId, HttpServletRequest request ) throws Exception {


		
		int loveCheck = loveService.loveCheck(userNickname, userId);

		
		
		if(loveCheck == 0) {
			//좋아요 처음누름
			loveService.addLove(userNickname,userId); //heart테이블 삽입			
			loveService.loveCheck(userNickname, userId);//좋아요 check 1
			rankingService.addLoveMentor(userNickname, userId);
	

			
		} else{
			loveService.deleteLove(userNickname,userId); //좋아요 삭제
			loveService.loveCheck(userNickname, userId);//좋아요 check 1
			rankingService.deleteLoveMentor(userNickname, userId);
				

		}
			return loveCheck;
	}
	
}
