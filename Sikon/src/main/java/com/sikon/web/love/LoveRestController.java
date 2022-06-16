package com.sikon.web.love;

import java.util.HashMap;
import java.util.Map;

import java.io.File;
import java.io.IOError;
import java.io.IOException;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartFile;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Love;
import com.sikon.service.domain.User;
import com.sikon.service.heart.HeartService;
import com.sikon.service.domain.Cook;
import com.sikon.service.domain.Heart;
import com.sikon.service.love.LoveService;


@RestController
@RequestMapping("/love/*")
public class LoveRestController {
	
	/// Field
	@Autowired
	@Qualifier("loveServiceImpl")
	private LoveService loveService;
	
	public LoveRestController() {
		System.out.println(this.getClass());
	}	

	
	@RequestMapping( value="json/updateLove", method=RequestMethod.POST )
	public int updateHeart(@ModelAttribute("love") Love love,
			@RequestParam("userNickname") String userNickname,
			@RequestParam("userId") String userId,
			@RequestParam("loveNo") int loveNo,
			HttpServletRequest request
			
			) throws Exception {

		System.out.println(userNickname);
		System.out.println(userId);
		System.out.println("!$!@!#%#@%#@@#%!@%#!#%@!@%#!%@#@%!");

		
		int loveCheck = loveService.loveCheck(userNickname, userId);
		System.out.println(loveCheck);
		if(loveCheck == 0) {
			//좋아요 처음누름
			loveService.addLove(userNickname,userId); //heart테이블 삽입
			
			loveService.loveCheck(userNickname, userId);//좋아요 check 1
			System.out.println("사랑해");

			
		}else  {
			loveService.deleteLove(userNickname,userId); //좋아요 삭제
			loveService.loveCheck(userNickname, userId);//좋아요 check 1
			
			
			System.out.println("싫어해");

		
		}
		return loveCheck;
	
	}
		
	
}
