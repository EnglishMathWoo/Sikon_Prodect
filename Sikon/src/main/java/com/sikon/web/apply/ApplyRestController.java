package com.sikon.web.apply;


import java.util.HashMap;
import java.util.Map;

import java.io.File;
import java.io.IOError;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.UUID;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.io.FileUtils;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Cook;
import com.sikon.service.domain.User;
import com.sikon.service.domain.Apply;
import com.sikon.service.cook.CookService;
import com.sikon.service.apply.ApplyService;





@Controller
@RequestMapping("/apply/*")







public class ApplyRestController {
	
	///Field
	@Autowired
	@Qualifier("applyServiceImpl")
	private ApplyService applyService;
	
	/// Field
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;
	
	public ApplyRestController() {
		System.out.println(this.getClass());
	}	
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;	
	
	@RequestMapping(value="json/sale",method=RequestMethod.GET)
	public List<Apply> sale( @ModelAttribute("apply") Apply apply, Model model) throws Exception{
		
		List<Apply> list = applyService.sale(apply);
		
		
		
		model.addAttribute("apply", list);
		return list ;
	}		
	
	
	

}
