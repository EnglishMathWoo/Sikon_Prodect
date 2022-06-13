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
import com.sikon.service.cook.CookService;


@RestController
@RequestMapping("/cook/*")

public class CookRestController {
	
	
	/// Field
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;
	
	


	public CookRestController() {
		System.out.println(this.getClass());
	}

	// ==> classpath:config/common.properties , classpath:config/commonservice.xml
	// 참조 할것
	// ==> 아래의 두개를 주석을 풀어 의미를 확인 할것
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
		
		String fileRoot = "C:\\Users\\bitcamp\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\summerNote\\";	//저장될 외부 파일 경로
		String originalFileName = multipartFile.getOriginalFilename();	//오리지날 파일명
		
		System.out.println(originalFileName);
		
		String extension = originalFileName.substring(originalFileName.lastIndexOf("."));	//파일 확장자
				
		String savedFileName = UUID.randomUUID() + extension;	//저장될 파일 명
		
		System.out.println(savedFileName);
		
		File targetFile = new File(fileRoot + savedFileName);
		
		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile);	//파일 저장
			map.put("url", "/summernoteImage/"+savedFileName);
			map.put("responseCode", "success");
				
		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile);	//저장된 파일 삭제
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
			
			System.out.println("Not NULL일 때 저장된 co쿠키값"+cookie.getValue());
			System.out.println("Not NULL일 때 저장될 co쿠키값"+str1);
		}
		return cook;
	}
	
	@RequestMapping( value="json/updateCook", method=RequestMethod.POST )
	public Cook updateCook(  @RequestBody Cook cook 
			, Model model, HttpSession session,
			@RequestParam("uploadfile") MultipartFile[] fileArray) throws Exception{
	
		
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
	 System.out.println(cook);
		
		cookService.updateCook(cook);
		
	
		return cookService.getCook(cook.getCookNo());
		
	}
	@RequestMapping( value="json/listCook", method=RequestMethod.POST )
	public Map  listCook(  @RequestBody Search search , HttpServletRequest request) throws Exception{
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		
		
		search.setPageSize(pageSize);
		
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		// Business logic 수행
		Map<String , Object> map=cookService.getCookList(search);
		
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(),pageUnit , pageSize);
		System.out.println(resultPage);
		
		// Model 과 View 연결
		map.put("list", map.get("list"));
		map.put("resultPage", resultPage);
		map.put("search", search);
		
		return  map;
		
	}
	
	//좋아요 push 알림
	@RequestMapping(value="/json/pushAlarm", method=RequestMethod.POST)
	@ResponseBody
	public Map pushAlram(@RequestParam("cookNo") int cookNo, @RequestParam("userId") String userId, @RequestParam("userNickname") String userNickname) {
				
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
}
