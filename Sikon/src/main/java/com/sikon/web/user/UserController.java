package com.sikon.web.user;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.alarm.AlarmService;
import com.sikon.service.domain.Career;
import com.sikon.service.domain.License;
import com.sikon.service.domain.User;
import com.sikon.service.user.UserService;


//==> 회원관리 Controller
@Controller
@RequestMapping("/user/*")
public class UserController {
	
	///Field
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	//setter Method 구현 않음
	
	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
		
	public UserController(){
		System.out.println(this.getClass());
	}
	
	//==> classpath:config/common.properties  ,  classpath:config/commonservice.xml 참조 할것
	//==> 아래의 두개를 주석을 풀어 의미를 확인 할것
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;
	
	private  String FILE_SERVER_PATH= "C:\\Users\\bitcamp\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles";
	
	@RequestMapping( value="login", method=RequestMethod.GET )
	public String login() throws Exception{
		
		System.out.println("/user/logon : GET");

		return "redirect:/user/loginView.jsp";
	}
	
	@RequestMapping( value="login", method=RequestMethod.POST )
	public String login(@ModelAttribute("user") User user , HttpSession session ) throws Exception{
		
		System.out.println("/user/login : POST");
		//Business Logic
		System.out.println("getuserid="+user.getUserId());
		User dbUser=userService.getUser(user.getUserId());
		

		
		if( user.getPassword().equals(dbUser.getPassword())){
			session.setAttribute("user", dbUser);
		}
		System.out.println(user.getPassword());
		System.out.println(dbUser.getPassword());
		
		return "redirect:/index.jsp";
	}
	
	@RequestMapping( value="logout", method=RequestMethod.GET )
	public String logout(HttpSession session ) throws Exception{
		
		System.out.println("/user/logout : POST");
		
		session.invalidate();
		
		return "redirect:/index.jsp";
	}
	@RequestMapping( value="addUser", method=RequestMethod.GET )
	public String addUserView() throws Exception {

		System.out.println("/user/addUser : GET");
		
		return "redirect:/user/addUserView.jsp";
	}
	
	@RequestMapping( value="addUser", method=RequestMethod.POST )
	public String addUser(@ModelAttribute("user") User user,
			@RequestParam("licenseName") String[] licenseName,
			@RequestParam("licenseInstitution") String[] licenseInstitution,
			@RequestParam("licenseDate") String[] licenseDate,
			@RequestParam("company") String[] company,
			@RequestParam("careerExperience") String[] careerExperience,
			@RequestParam("startDate") String[] startDate,
			@RequestParam("endDate") String[] endDate,
			@RequestParam("uploadFile")  MultipartFile file, Model model) throws Exception {

		System.out.println("/user/addUser : POST");
		
		for(int i=0 ; i<licenseName.length ; i++) {
			System.out.println(licenseName[i]);
			System.out.println(licenseInstitution[i]);
			System.out.println(licenseDate[i]);
			System.out.println(user.getUserId());
		}
		
		for(int k=0 ; k<company.length ; k++) {
			System.out.println(company[k]);
			System.out.println(careerExperience[k]);
			System.out.println(startDate[k]);
			System.out.println(endDate[k]);
			System.out.println(user.getUserId());
		}
		
		
		List list = new ArrayList();
		for ( int j=0 ; j<licenseName.length ; j++) {
			License license = new License();
			license.setLicenseName(licenseName[j]);
			license.setLicenseInstitution(licenseInstitution[j]);
			license.setLicenseDate(licenseDate[j]);
			license.setUserId(user.getUserId());
			list.add(license);
		}
		
		List list2 = new ArrayList();
		for ( int m=0 ; m<company.length ; m++) {
			Career career = new Career();
			career.setCompany(company[m]);
			career.setCareerExperience(careerExperience[m]);
			career.setStartDate(startDate[m]);
			career.setEndDate(endDate[m]);
			career.setUserId(user.getUserId());
			list2.add(career);
		}

		System.out.println("list=" + list);
		System.out.println("list2=" + list2);
		
		Map map = new HashMap();
		map.put("list", list);
		map.put("list2", list2);
		
//		System.out.println("map.list="+map);
		
		if(!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File(FILE_SERVER_PATH, file.getOriginalFilename()));
			model.addAttribute("msg", "File uploaded successfully.");
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
		}
		
		user.setUserImage(file.getOriginalFilename());
		user.setUserBirth(user.getUserBirth().replace("-",""));
		userService.addUser(user, map);
	//	userService.addLicense(license);
	//	userService.addCareer(career);
		
		return "redirect:/user/loginView.jsp";
	}
	
	@RequestMapping( value="getUser", method=RequestMethod.GET )
	public String getUser( @RequestParam("userId") String userId , Model model ) throws Exception {
		
		System.out.println("/user/getUser : GET");
		//Business Logic
		User user = userService.getUser(userId);
		// Model 과 View 연결
		model.addAttribute("user", user);
		
		return "forward:/user/getUser.jsp";
	}
	
	@RequestMapping( value="updateUser", method=RequestMethod.GET )
	public String updateUserView( @RequestParam("userId") String userId , Model model ) throws Exception{

		System.out.println("/user/updateUser : GET");
		//Business Logic
		User user = userService.getUser(userId);
		// Model 과 View 연결
		model.addAttribute("user", user);
		
		return "forward:/user/updateUser.jsp";
	}
	
	@RequestMapping( value="updateUser", method=RequestMethod.POST )
	public String updateUser( @ModelAttribute("user") User user , Model model , HttpSession session) throws Exception{

		System.out.println("/user/updateUser : POST");
		//Business Logic
		userService.updateUser(user);
		
		String sessionId=((User)session.getAttribute("user")).getUserId();
		if(sessionId.equals(user.getUserId())){
			session.setAttribute("user", user);
		}
		
		return "redirect:/user/getUser?userId="+user.getUserId();
	}
	
		
	@RequestMapping( value="listUser" )
	public String listUser( @ModelAttribute("search") Search search , Model model , HttpServletRequest request) throws Exception{
		
		System.out.println("/user/listUser : GET / POST");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String , Object> map=userService.getUserList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		return "forward:/user/listUser.jsp";
	}
	
//	@RequestMapping( value="checkDuplication", method=RequestMethod.POST )
//	public String checkDuplication( @RequestParam("userId") String userId , Model model ) throws Exception{
//		
//		System.out.println("/user/checkDuplication : POST");
//		//Business Logic
//		boolean result=userService.checkDuplication(userId);
//		// Model 과 View 연결
//		model.addAttribute("result", new Boolean(result));
//		model.addAttribute("userId", userId);
//
//		return "forward:/user/checkDuplication.jsp";
//	}
	
}