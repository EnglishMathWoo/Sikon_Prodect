package com.sikon.web.cook;

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
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
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
import com.sikon.service.heart.HeartService;
import com.sikon.service.user.UserService;
import com.sikon.service.cook.CookService;


@RestController
@RequestMapping("/cook/*")

public class CookRestController {
	
	
	/// Field
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;
	
	@Autowired
	@Qualifier("heartServiceImpl")
	private HeartService heartService;
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;


	public CookRestController() {
		System.out.println(this.getClass());
	}

	// ==> classpath:config/common.properties , classpath:config/commonservice.xml
	// ÂüÁ¶ ÇÒ°Í
	// ==> ¾Æ·¡ÀÇ µÎ°³¸¦ ÁÖ¼®À» Ç®¾î ÀÇ¹Ì¸¦ È®ÀÎ ÇÒ°Í
	@Value("#{commonProperties['pageUnit']}")
	// @Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	// @Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;

	

	@RequestMapping( value="json/addcook", method=RequestMethod.POST )

	public Map addCook(@RequestBody Cook cook 
			
	,Model model
	,@RequestParam("uploadfile") MultipartFile[] fileArray		) throws Exception {

		String fileName = "";
		//String FILE_SERVER_PATH = "C:/workspace(1)/11.Model2MVCShop/src/main/webapp/images/uploadFiles";
		String FILE_SERVER_PATH = "C:\\Users\\sweet\\git\\Sikon_Project\\Sikon\\src\\main\\webapp\\images\\uploadFiles";
			for(int i=0; i<fileArray.length;i++) {
			
				if(!fileArray[i].getOriginalFilename().isEmpty()) {
					fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
					model.addAttribute("msg", "File uploaded successfully.");
					
				}else {
					model.addAttribute("msg", "Please select a valid mediaFile..");
				}
			
				fileName+=fileArray[i].getOriginalFilename()+"/";
				
				
			}
			
			

			cook.setCookFilename(fileName);
		System.out.println("/cook/addcook : post");
		// Business Logic

		
		cookService.addCook(cook);
		model.addAttribute(cook);
		
		Map map  = new HashMap() ;
		 
		 map.put("cook", cook); 
		 
		 return  map;
	
	}
	
	@PostMapping(value="/json/uploadSummernoteImageFile", produces = "application/json")
	@ResponseBody
	public Map uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {
		
		Map map = new HashMap();
		
		String fileRoot = "C:\\Users\\bitcamp\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\summerNote\\";	//ÀúÀåµÉ ¿ÜºÎ ÆÄÀÏ °æ·Î
		String originalFileName = multipartFile.getOriginalFilename();	//¿À¸®Áö³¯ ÆÄÀÏ¸í
		
		System.out.println(originalFileName);
		
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//ÆÄÀÏ È®ÀåÀÚ
				
		String savedFileName = UUID.randomUUID() + extension;	//ÀúÀåµÉ ÆÄÀÏ ¸í
		
		System.out.println(savedFileName);
		
		File targetFile = new File(fileRoot + savedFileName);
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//ÆÄÀÏ ÀúÀå
			map.put("url", "/summernoteImage/"+savedFileName);
			map.put("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//ÀúÀåµÈ ÆÄÀÏ »èÁ¦
			map.put("responseCode", "error");
			e.printStackTrace();
		}
		
		return map;
	}
	@RequestMapping(value="json/getCook/{cookNo}", method=RequestMethod.GET)
	public Cook getCook( @RequestParam("cookNo") int cookNo ,
			@CookieValue(value="history", required=false) Cookie cookie,
			HttpServletResponse response, Model model,@RequestParam("menu") String menu) throws Exception {
		
		Cook cook = cookService.getCook(cookNo);
		
		String img = cook.getCookFilename();
		String co = cook.getCookName().replace(" ", "_");
		String cn = "/"+cookNo+"&"+img+"&"+co;
		String first = cookNo+"&"+img+"&"+co;
		
		if(cookie != null) {
			Cookie cookCookie = new Cookie("history",first);
			cookCookie.setPath("/");
			response.addCookie(cookCookie);
		}else {
			String str1 = cookie.getValue()+ cn;
			
			Cookie cookCookie02 = new Cookie("history",str1);
			cookCookie02.setPath("/");
			response.addCookie(cookCookie02);
			
			System.out.println("Not NULLÀÏ ¶§ ÀúÀåµÈ coÄíÅ°°ª"+cookie.getValue());
			System.out.println("Not NULLÀÏ ¶§ ÀúÀåµÉ coÄíÅ°°ª"+str1);
		}
		return cook;
	}
	

	@RequestMapping( value="json/listCook", method=RequestMethod.POST )
	public Map  listCook(  @RequestBody Search search , HttpServletRequest request) throws Exception{
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		
		
		search.setPageSize(pageSize);
		
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		// Business logic ¼öÇà
		Map<String , Object> map=cookService.getCookList(search);
		
		List<Cook> cookList = (List<Cook>) map.get("list");
		
		for(int i=0; i<cookList.size(); i++) {
			 int heartCount = heartService.heartCheck(cookList.get(i).getCookNo(), user.getUserId());
			 cookList.get(i).setHeartCount(heartCount);
			 cookList.set(i, cookList.get(i));
		}
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(),pageUnit , pageSize);
		System.out.println(resultPage);
		
		// Model °ú View ¿¬°á
		map.put("list", cookList);
		map.put("resultPage", resultPage);
		map.put("search", search);
		
		return  map;
		
	}
	
	//ÁÁ¾Æ¿ä push ¾Ë¸²
	@RequestMapping(value="/json/addHeart", method=RequestMethod.POST)
	@ResponseBody
	public Map addHeart(@RequestParam("cookNo") int cookNo, @RequestParam("userId") String userId, @RequestParam("userNickname") String userNickname) {
				
		Map map = new HashMap();
		
		try{
			Cook cook = cookService.getCook(cookNo);
			
			map.put("userId", userId);
			map.put("userNickname", userNickname);
			map.put("cookName", cook.getCookName());
			map.put("mentorId", cook.getMentor().getUserId());
			map.put("responseCode", "success");
		
		}catch (Exception e){
			e.printStackTrace();
		}
		
		return map;	
	}
	
	//Áñ°ÜÃ£±â push ¾Ë¸²
//		@RequestMapping(value="/json/addLove", method=RequestMethod.POST)
//		@ResponseBody
//		public Map addLove(@RequestParam("userId") String userId, @RequestParam("userNickname") String userNickname) {
//					
//			Map map = new HashMap();
//			
//			try{
//				Cook cook = cookService.getCook(cookNo);
//				
//				map.put("userId", userId);
//				map.put("userNickname", userNickname);
//				map.put("cookName", cook.getCookName());
//				map.put("mentorId", cook.getMentor().getUserId());
//				map.put("responseCode", "success");
//			
//			}catch (Exception e){
//				e.printStackTrace();
//			}
//			
//			return map;	
//		}
	
	@RequestMapping(value = "json/mentor")
	public Map mentor(@RequestParam("mentorId") String mentorId,@RequestBody Search search, Model model, HttpServletRequest request)
			throws Exception {
		
		System.out.println("¿Ö ¾È´ë!!!!!!!!"+search.getCurrentPage());

		search.setPageSize(pageSize);
		System.out.println("search:" + search);
		User user = userService.getUser(mentorId);
		
		System.out.println("´Ğ³×ÀÓ: "+user.getUserNickname());
		
		
		// Business logic ¼öÇà
		Map<String, Object> map = cookService.listMyCook(search, user.getUserNickname());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println(resultPage);
		System.out.println("ÄíÄíÄíÄíÄíÄíÄíÄíÄ¼Ä¼Ä¼Ä¼Ä¼Ä¼Ä¼ÄíÄíÄíÄíÄí");
		System.out.println(resultPage);
		System.out.println("////////////////////////////////////////"+map.get("list"));
		
		
		map.put("user", user);
		map.put("list", map.get("list"));
		map.put("resultPage", resultPage);
		map.put("search", search);

		System.out.println("ÄíÄíÄíÄíÄíÄíÄíÄíÄ¼Ä¼Ä¼Ä¼Ä¼Ä¼Ä¼ÄíÄíÄíÄíÄí");
		return map;
	}
	
	@RequestMapping(value = "json/listMyCook")
	public Map listMyCook(@RequestBody Search search, Model model, HttpServletRequest request)
			throws Exception {
		
		System.out.println("¿Ö ¾È´ë!!!!!!!!"+search.getCurrentPage());

		search.setPageSize(pageSize);
		System.out.println("search:" + search);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		System.out.println("´Ğ³×ÀÓ: "+user.getUserNickname());
		
		
		// Business logic ¼öÇà
		Map<String, Object> map = cookService.listMyCook(search, user.getUserNickname());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println(resultPage);
		System.out.println("ÄíÄíÄíÄíÄíÄíÄíÄíÄ¼Ä¼Ä¼Ä¼Ä¼Ä¼Ä¼ÄíÄíÄíÄíÄí");
		System.out.println(resultPage);
		System.out.println("////////////////////////////////////////"+map.get("list"));
		
		
		map.put("user", user);
		map.put("list", map.get("list"));
		map.put("resultPage", resultPage);
		map.put("search", search);

		System.out.println("ÄíÄíÄíÄíÄíÄíÄíÄíÄ¼Ä¼Ä¼Ä¼Ä¼Ä¼Ä¼ÄíÄíÄíÄíÄí");
		return map;
	}
}
