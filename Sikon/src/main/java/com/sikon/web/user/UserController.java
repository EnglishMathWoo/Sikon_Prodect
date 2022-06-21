package com.sikon.web.user;

import java.io.File;
import java.sql.Date;
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
	public String login(@ModelAttribute("user") User user , HttpSession session, Model model ) throws Exception{
		
		System.out.println("/user/login : POST");
		//Business Logic
		System.out.println("getuserid="+user.getUserId());
		User dbUser=userService.getUser(user.getUserId());
		
		int statusCount = alarmService.getUncheckedAlarm(user.getUserId());
		System.out.println("statusCount="+statusCount);
		
		//탈퇴 회원 로그인 못하게
		if(dbUser.getQuitStatus().equals("Y")) {
		System.out.println("quitStatus="+dbUser.getQuitStatus());
		model.addAttribute("msg","탈퇴 회원 입니다.");
		model.addAttribute("url","loginView.jsp");

		return "/user/loginFail.jsp";
		}
		
		
		if( user.getPassword().equals(dbUser.getPassword())){
			session.setAttribute("user", dbUser);
			session.setAttribute("alarm", statusCount );
			return "redirect:/index.jsp";
		} else {
			model.addAttribute("msg","비밀번호가 일치하지 않습니다.");
			model.addAttribute("url","loginView.jsp");
			return "/user/loginFail.jsp";
		}		
		
	}
	
	@RequestMapping(value="/kakaoLogin", method=RequestMethod.GET)
	public String kakaoLogin(@RequestParam(value = "code", required = false) String code, HttpSession session) throws Exception {
		
			System.out.println("#########" + code);
			String access_Token = userService.getAccessToken(code);
			
			HashMap<String, Object> userInfo = userService.getUserInfo(access_Token);
			System.out.println("###access_Token#### : " + access_Token);
			System.out.println("###nickname#### : " + userInfo.get("nickname"));
			System.out.println("###email#### : " + userInfo.get("email"));
			
			String userE = (String)userInfo.get("email") ;
			String userN = (String)userInfo.get("nickname") ;

			System.out.println("/user/checkDuplication : POST");
				
			if(userService.checkDuplication(userE)==true) {  // id가 존재하지 않을때
				User user = new User();
				user.setUserId(userE);
				user.setUserName(userN);
				user.setPassword("1234");
				user.setUserNickname(userE);
				user.setMentorApply("N");
				user.setLoginPath("K");
				System.out.println(user);
				
			//	Map map = new HashMap();
				
				userService.addKakaoUser(user);
				System.out.println("end");
							
			}else {
				
				User user1 = userService.getUser(userE);
				System.out.println(userE);
				session.setAttribute("user", user1);
			}
			
			return "redirect:/index.jsp";
	}
	
	@RequestMapping( value="logout", method=RequestMethod.GET )
	public String logout(HttpSession session ) throws Exception{
		
		System.out.println("/user/logout : POST");
		
		session.invalidate();
		
		return "redirect:/index.jsp";
	}
	
	@RequestMapping( value="findUser", method=RequestMethod.GET )
	public String findUserId() throws Exception {

		System.out.println("/user/findUserId : GET");
		
		return "redirect:/user/findUserId.jsp";
	}
	
	@RequestMapping( value="findUserpw", method=RequestMethod.GET )
	public String findUserpw() throws Exception {

		System.out.println("/user/findUserpw : GET");
		
		
		return "redirect:/user/findUserpw.jsp";
	}
	
	//타겟
	@RequestMapping( value="updateUserpw", method=RequestMethod.GET )
	public String updateUserpw(@RequestParam( value = "userId", required = false ) String userId, Model model) throws Exception {

		System.out.println("/user/updateUserpw : GET");
		System.out.println("/user/updateUserpw : GET"+ userId);
	
		model.addAttribute("userId", userId);
		
		return "forward:/user/updateUserpw.jsp";
	}
	
	@RequestMapping( value="updateUserpw", method=RequestMethod.POST )
	public String findUserPw(HttpServletRequest request,@RequestParam("userId") String userId, @RequestParam("password") String password) throws Exception {
		
		System.out.println("/user/findUserId : POST");
		
		System.out.println("userId="+userId);
		System.out.println("password="+password);
		
		User user = userService.getUser(userId);
		
		
		
//		if(userId.equals(user) ) {
//			System.out.println("userId="+userId);
//			System.out.println("password="+password);
//			userService.updateUserPw(userId, password);
//		}else {
//			System.out.println("바뀌엇나?");
//		}
		
		userService.updateUserPw(userId, password);
		System.out.println("userId="+userId);
		System.out.println("password="+password);
		return "redirect:/user/loginView.jsp";
	}
	
	
//	@RequestMapping( value="findUserpw", method=RequestMethod.POST )
//	public String findUserPw(HttpServletRequest request,@RequestParam("userId") String userId, @RequestParam("password") String password) throws Exception {
//		
//		System.out.println("/user/findUserId : POST");
//		
//		User user = userService.getUser(userId);
//		
//		
//		
////		if(userId.equals(user) ) {
////			System.out.println("userId="+userId);
////			System.out.println("password="+password);
////			userService.updateUserPw(userId, password);
////		}else {
////			System.out.println("바뀌엇나?");
////		}
//		
//		userService.updateUserPw(userId, password);
//		System.out.println("userId="+userId);
//		System.out.println("password="+password);
//		return "redirect:/user/loginView.jsp";
//	}
	
	
	
//	@RequestMapping( value="findUser", method=RequestMethod.POST )
//	public String findUserId(@RequestParam("userName") String userName,
//			@RequestParam("phone") String phone, Model model, HttpServletRequest request ) throws Exception {
//		
//		System.out.println("/user/findUserId : POST");
//		
//		model.addAttribute("userId", "아이디 찾음");
//		model.addAttribute("url", "/user/findUserId.jsp");
//		
//		
//		return "redirect:/user/findUserId.jsp";
//	}
	
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
	public String getUser( @RequestParam("userId") String userId , Model model, HttpServletRequest request ) throws Exception {
		
		System.out.println("/user/getUser : GET");
		//Business Logic
		User user = userService.getUser(userId);
		List list = userService.getLicense(userId);
		List list2 = userService.getCareer(userId);
		System.out.println("user가져오기="+user);
		System.out.println("list가져오기="+list);
		System.out.println("list2가져오기="+list2);
	//	List list = userService.getUCL(userId);
		
//		HttpSession session=request.getSession();
//		session.getAttribute("user");
		
		// Model 과 View 연결
		model.addAttribute("user", user);
		model.addAttribute("license", list);
		model.addAttribute("career", list2);
	//	model.addAttribute("ucl", list);
		
		return "forward:/user/getUser.jsp";
	}
	
	@RequestMapping( value="updateUser", method=RequestMethod.GET )
	public String updateUser( @RequestParam("userId") String userId , Model model ) throws Exception{

		System.out.println("/user/updateUser : GET");
		//Business Logic
		User user = userService.getUser(userId);
		List license = userService.getLicense(userId);
		List career = userService.getCareer(userId);
		
		// Model 과 View 연결
		model.addAttribute("user", user);
		model.addAttribute("license", license);
		model.addAttribute("career", career);
		
		return "forward:/user/updateUser.jsp";
	}
	
	@RequestMapping( value="updateUser", method=RequestMethod.POST )
	public String updateUser( @ModelAttribute("user") User user ,
			@RequestParam(value="licenseNo",  defaultValue="0") int[] licenseNo,
			@RequestParam(value="licenseName",  required=false) String[] licenseName,
			@RequestParam(value="licenseInstitution", required=false) String[] licenseInstitution,
			@RequestParam(value="licenseDate", required=false) String[] licenseDate,
			@RequestParam(value="careerNo", defaultValue="0") int[] careerNo,
			@RequestParam(value="company", required=false) String[] company,
			@RequestParam(value="careerExperience", required=false) String[] careerExperience,
			@RequestParam(value="startDate", required=false) String[] startDate,
			@RequestParam(value="endDate", required=false) String[] endDate,
			@RequestParam("uploadFile")  MultipartFile file, Model model , HttpServletRequest request, HttpSession session) throws Exception{

		System.out.println("/user/updateUser : POST");
		
		System.out.println(user.getAddr());
		
		
		System.out.println("======================");
		System.out.println("======================");
		for(int no : licenseNo) {
			System.out.println("licenseNo: "+no);
		}
		
		System.out.println("======================");
		
		for(int co : careerNo) {
			System.out.println("careerNo: "+co);
		}
		System.out.println("======================");
	//	session.setAttribute("user", userService.getUser(user.getUserId()));
		
		if(!file.getOriginalFilename().isEmpty()) {
			file.transferTo(new File(FILE_SERVER_PATH, file.getOriginalFilename()));
			model.addAttribute("msg", "File uploaded successfully.");
		}else {
			model.addAttribute("msg", "Please select a valid mediaFile..");
		}
		
		user.setUserImage(file.getOriginalFilename());
		user.setUserBirth(user.getUserBirth().replace("-",""));
		
		userService.updateUser(user);
		
		System.out.println("user2="+user);
		
		
		
		if(user.getRole().equals("mentor") || user.getMentorApply().equals("Y") ) {
			
		List list = new ArrayList();
		for ( int j=0 ; j<licenseName.length ; j++) {
			License license = new License();
			license.setLicenseName(licenseName[j]);
			license.setLicenseInstitution(licenseInstitution[j]);
			System.out.println("아아아"+licenseDate[j]);
			license.setLicenseDate(licenseDate[j]);
			System.out.println("===== 여기는 되고 =====");
			license.setLicenseNo(licenseNo[j]);
			System.out.println("===== 여기는 안될듯 =====");
			license.setUserId(user.getUserId());
			list.add(license);
			System.out.println("license="+license);
		}
		
		List list2 = new ArrayList();
		for ( int m=0 ; m<company.length ; m++) {
			Career career = new Career();
			career.setCompany(company[m]);
			career.setCareerExperience(careerExperience[m]);
			career.setStartDate(startDate[m]);
			career.setEndDate(endDate[m]);
			career.setCareerNo(careerNo[m]);
			career.setUserId(user.getUserId());
			System.out.println("career");
			list2.add(career);
			System.out.println("career="+career);
		}

		System.out.println("list=" + list);
		System.out.println("list2=" + list2);
		
		Map map = new HashMap();
		map.put("list", list);
		map.put("list2", list2);
		
		
		
		userService.updateLicense(map, user);
		userService.updateCareer(map, user);
		
		}
		
		
		return "redirect:/user/getUser?userId="+user.getUserId();
	}
	
	
	@RequestMapping( value="changeUserRole", method=RequestMethod.GET )
	public String changeUserRole( @RequestParam(value = "userId", required = false) String userId ,
						@RequestParam(value = "role", required = false) String role, Model model ) throws Exception{

		System.out.println("/user/changeUserRole : GET");
		System.out.println("/user/changeUserRole : GET"+userId);
		System.out.println("/user/changeUserRole : GET"+role);
		//Business Logic
		
		
		
		// Model 과 View 연결
		model.addAttribute("userId", userId);
		model.addAttribute("role", role);
		
		return "forward:/user/changeUserRole.jsp";
	}
		
	
	@RequestMapping( value="changeUserRole", method=RequestMethod.POST )
	public String changeUserRole(HttpServletRequest request,@RequestParam("userId") String userId,
											@RequestParam("role") String role) throws Exception {
		
		System.out.println("/user/changeUserRole : POST");
		
		System.out.println("1 userId="+userId);
		System.out.println("1 mentorApply="+role);
		
		User user = userService.getUser(userId);
		
		
		
		role = user.setRole("mentor");
		
	//	user = userService.getUser(role);
	
		System.out.println("2 userId="+userId);
		System.out.println("2 mentorApply="+role);
		
		userService.changeUserRole(userId, role);
		
		
		return "redirect:/user/Navigation.jsp";
	}
	
	
	@RequestMapping( value="backUserRole", method=RequestMethod.GET )
	public String backUserRole( @RequestParam(value = "userId", required = false) String userId ,
						@RequestParam(value = "mentorApply", required = false) String mentorApply, Model model ) throws Exception{

		System.out.println("/user/changeUserRole : GET");
		System.out.println("/user/changeUserRole : GET"+userId);
		System.out.println("/user/changeUserRole : GET"+mentorApply);
		//Business Logic
		
		
		
		// Model 과 View 연결
		model.addAttribute("userId", userId);
		model.addAttribute("mentorApply", mentorApply);
		
		return "forward:/user/backUserRole.jsp";
	}
	
	
	@RequestMapping( value="backUserRole", method=RequestMethod.POST )
	public String backUserRole(HttpServletRequest request, @RequestParam("userId") String userId,
											@RequestParam("mentorApply") String mentorApply) throws Exception {
		
		System.out.println("/user/backUserRole : POST");
		
		System.out.println("1 userId="+userId);
		System.out.println("1 mentorApply="+mentorApply);
		
		User user = userService.getUser(userId);
		
		
		
		mentorApply = user.setRole("N");
		
	//	user = userService.getUser(role);
	
		System.out.println("2 userId="+userId);
		System.out.println("2 mentorApply="+mentorApply);
		
		userService.backUserRole(userId, mentorApply);
		
		
		return "redirect:/user/Navigation2.jsp";
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
		System.out.println("resultPage="+resultPage);
		
		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		
		return "forward:/user/listUser.jsp";
	}
	
	
	@RequestMapping( value="deleteUser", method=RequestMethod.GET )
	public String deleteUser(  @RequestParam(value = "userId", required = false) String userId ,
			@RequestParam(value = "quitDate", required = false) Date quitDate, 
			@RequestParam(value = "quitStatus", required = false) String quitStatus, Model model ) throws Exception{

		System.out.println("/user/deleteUser : GET");
		System.out.println("/user/deleteUser : GET"+userId);
		System.out.println("/user/deleteUser : GET"+quitDate);
		System.out.println("/user/deleteUser : GET"+quitStatus);
		//Business Logic
		User user = userService.getUser(userId);
		
		
		// Model 과 View 연결
		model.addAttribute("user", user);
		model.addAttribute("quitDate", quitDate);
		model.addAttribute("quitStatus", quitStatus);
		
		
		return "forward:/user/deleteUser.jsp";
	}
	
	@RequestMapping( value="deleteUser", method=RequestMethod.POST )
	public String deleteUser(@ModelAttribute("user") User user , HttpSession session, HttpServletRequest request, Model model,
									@RequestParam("quitStatus") String quitStatus) throws Exception{
		
		System.out.println("/user/deleteUser : POST");
		//Business Logic
		System.out.println("user="+user);
	
		System.out.println("quitStatus="+quitStatus);
		
		User dbUser=userService.getUser(user.getUserId());
		
		Date quitDate = user.getQuitDate();
		System.out.println("quitDate="+quitDate);
		
//		session = request.getSession();
//		session.getAttribute("user");
		
		
		
		if( user.getPassword().equals(dbUser.getPassword())){
			session.setAttribute("user", dbUser);
			
			System.out.println("userID 1="+dbUser.getPassword());
			
			System.out.println("userID 2="+user.getPassword());
			
			quitStatus = user.setQuitStatus("Y");
			
			quitDate = user.setQuitDate(dbUser.getRegDate());
			
			System.out.println("user="+user);
			System.out.println("quitDate="+quitDate);
			System.out.println("quitStatus="+quitStatus);
			
			userService.deleteUser(user, quitDate, quitStatus);
			
			
		}
		
			
		
		session.invalidate();
		
		return "redirect:/index.jsp";
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