package com.sikon.web.purchase;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

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
import org.springframework.web.servlet.ModelAndView;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.Purchase;
import com.sikon.service.domain.User;
import com.sikon.service.point.PointService;
import com.sikon.service.domain.Cart;
import com.sikon.service.domain.Coupon;
import com.sikon.service.domain.Point;
import com.sikon.service.product.ProductService;
import com.sikon.service.purchase.PurchaseService;
import com.sikon.service.user.UserService;
import com.sikon.service.cart.CartService;
import com.sikon.service.coupon.CouponService;


//==> 회원관리 Controller
@Controller
@RequestMapping("/purchase/*")
public class PurchaseController {
	
	///Field
	@Autowired
	@Qualifier("purchaseServiceImpl")
	private PurchaseService purchaseService;
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	@Autowired
	@Qualifier("userServiceImpl")
	private UserService userService;
	@Autowired
	@Qualifier("cartServiceImpl")
	private CartService cartService;
	@Autowired
	@Qualifier("couponServiceImpl")
	private CouponService couponService;
	@Autowired
	@Qualifier("pointServiceImpl")
	private PointService pointService;
	
		
	public PurchaseController(){
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
	
	
	@RequestMapping(value="addPurchase", method=RequestMethod.GET)
	public ModelAndView addPurchase(@RequestParam("prodNo") int prodNo, @RequestParam("quantity") int quantity, HttpServletRequest request) throws Exception {

		
		System.out.println("/purchase/addPurchase : GET");
		
		System.out.println("quantity: "+quantity);
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		
		System.out.println(user.getHoldpoint());
		
		Product product = productService.getProduct(prodNo);
		
		List list = couponService.getMyCoupon(user.getUserId());
		
		//==================================================================================
		//결제 uid 만들기
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMddHHmmss");
		String nowrandom = now.format(formatter);   
		
		String userid = user.getUserId().replace("@", "");
		String sub = userid.replace(userid.substring(userid.length()-4, userid.length()), "");
		String uid = sub+nowrandom;	
		System.out.println("uid: "+uid);
		//==================================================================================
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/addPurchaseView.jsp");
		modelAndView.addObject("product", product);
		modelAndView.addObject("quantity", quantity);
		modelAndView.addObject("coupon", list);
		modelAndView.addObject("uid", uid);
		
		return modelAndView;
	}
	

	@RequestMapping(value="addPurchase", method=RequestMethod.POST)
	public ModelAndView addPurchase( @ModelAttribute("purchase") Purchase purchase, @RequestParam("prodNo") int prodNo, @RequestParam("userId") String userId ) throws Exception {

		System.out.println("/purchase/addPurchase : POST");
		//Business Logic

		//==================================================================================
		//일련번호 만들기
		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		String nowrandom = now.format(formatter);   
		
		Random random = new Random();
		for(int i=0;i<7;i++) {
			nowrandom += Integer.toString(random.nextInt(10));
		}
		
		String sub = "str";
		String serialNo = sub+nowrandom;	
		System.out.println("일련번호: "+serialNo);
		//==================================================================================
		
		User user = userService.getUser(userId);
		Product product = productService.getProduct(prodNo);
		Point point = new Point();
		
		purchase.setBuyer(user);
		purchase.setPurchaseProd(product);
		purchase.setDivyStatus("001");
		purchase.setSerialNo(serialNo);
		purchase.setReviewStatus("001");
		
		int quantity = purchase.getPurchaseQuantity();
		int usedpoint = purchase.getUsedPoint();
		int totalpoint = user.getHoldpoint() - usedpoint;
		
		System.out.println("purchase: "+purchase);
		purchaseService.addPurchase(purchase);
		
		System.out.println("quantity: "+quantity);
		System.out.println("prodNo: "+prodNo);
		purchaseService.updateStock(quantity, prodNo);
		
		System.out.println("usedpoint: "+usedpoint);
		System.out.println("totalpoint: "+totalpoint);
		point.setPointScore(usedpoint);
		point.setTotalPoint(totalpoint);
		point.setUserId(userId);
		point.setPointType("use");
		point.setPointCategory("str");
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint, userId);
		
		int earnpoint = purchase.getEarnPoint();
		
		point.setPointScore(earnpoint);
		point.setTotalPoint(totalpoint+earnpoint);
		point.setUserId(userId);
		point.setPointType("earn");
		point.setPointCategory("str");
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint, userId);

		//==================================================================================
		// 쿠폰 사용하기
		if(purchase.getUsedCoupon() != null) {
			int issueNo = Integer.parseInt(purchase.getUsedCoupon());
			System.out.println("issueNo: "+issueNo);
			
			Coupon coupon = couponService.getIssuedCoupon(issueNo);
			coupon.setIssueStatus("002");
			System.out.println("coupon: "+coupon);
			
			couponService.updateIssueStatus(coupon);
		}
		//==================================================================================		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/readPurchase.jsp");
		modelAndView.addObject("purchsae", purchase);
		
		return modelAndView;
	}


//=== 장바구니 구매 ==============================================================================================
//=============================================================================================================	
	
	@RequestMapping(value="addPurchaseByCart", method=RequestMethod.GET)
	public String addPurchaseByCart(@RequestParam("cartNo") int[] cartNo,  Model model) throws Exception {

		System.out.println("/addPurchaseByCart : GET");
	
		List list = new ArrayList();
		
		for(int cartnum : cartNo) {
			
			Cart cart = cartService.getCart(cartnum);
			Product product = productService.getProduct(cart.getCartProd().getProdNo());
			cart.setCartProd(product);
			
			list.add(cart);
			
		}
		
		System.out.println("cartlist: "+list);
		
		model.addAttribute("cartlist", list);
		
		
		return "forward:/purchase/addPurchaseViewByCart.jsp";
	}	
	

	@RequestMapping(value="addPurchaseByCart", method=RequestMethod.POST)
	public ModelAndView addPurchaseByCart(@ModelAttribute("purchase") Purchase purchase, @RequestParam("coupon") String[] coupon,
															@RequestParam("cartNo") int[] cartNo, @RequestParam("userId") String userId ) throws Exception {

		System.out.println("========================================================================");
		System.out.println("/purchase/addPurchaseByCart : POST");
		
		User user = userService.getUser(userId);
		
		//====================================
		//일련번호 만들기
		LocalDate now = LocalDate.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd");
		String nowrandom = now.format(formatter);   
		
		Random random = new Random();
		for(int i=0;i<7;i++) {
			nowrandom += Integer.toString(random.nextInt(10));
		}
		
		String sub = "str";
		String serialNo = sub+nowrandom;	
		System.out.println("일련번호: "+serialNo);
		//=======================================
		
		List list = new ArrayList();
		
		//for문
		for(int i=0; i<cartNo.length; i++) {
			
			Cart cart = cartService.getCart(cartNo[i]);
			
			Product product = productService.getProduct(cart.getCartProd().getProdNo());
			
			Purchase purchaseByCart = new Purchase();
			purchaseByCart.setReceiverName(purchase.getReceiverName());
			purchaseByCart.setReceiverPhone(purchase.getReceiverPhone());
			purchaseByCart.setReceiverEmail(purchase.getReceiverEmail());
			purchaseByCart.setDivyAddr(purchase.getDivyAddr());
			purchaseByCart.setDivyMessage(purchase.getDivyMessage());
			purchaseByCart.setDivyFee(purchase.getDivyFee());
			purchaseByCart.setUsedPoint(purchase.getUsedPoint());
			purchaseByCart.setEarnPoint(purchase.getEarnPoint());
			purchaseByCart.setBuyer(user);
			purchaseByCart.setPurchaseProd(product);
			purchaseByCart.setUsedCoupon(coupon[i]);
			purchaseByCart.setPurchaseQuantity(cart.getQuantity());
			purchaseByCart.setDivyStatus("001");
			purchaseByCart.setPaymentOpt("KA");
			purchaseByCart.setSerialNo(serialNo);
			purchaseByCart.setReviewStatus("001");
			
			list.add(purchaseByCart);
			
			System.out.println(purchaseByCart);
			purchaseService.addPurchase(purchaseByCart);
			
			System.out.println(cart.getQuantity());
			System.out.println(product.getProdNo());
			purchaseService.updateStock(cart.getQuantity(), product.getProdNo());
			
			cartService.deleteCart(cartNo[i]);
		
		}
		
		System.out.println("========================================================================");
		
		System.out.println("list: "+list);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/readPurchaseByCart.jsp");
		modelAndView.addObject("list", list);
		
		return modelAndView;
	}

//=============================================================================================================	
//=============================================================================================================	

		
	@RequestMapping( value="getPurchase", method=RequestMethod.GET)
	public ModelAndView getPurchase( @RequestParam("tranNo") int tranNo) throws Exception {
		
		System.out.println("/purchase/getPurchase : GET ");
		
		Purchase purchase = purchaseService.getPurchase(tranNo);
		User user = userService.getUser(purchase.getBuyer().getUserId());
		Product product = productService.getProduct(purchase.getPurchaseProd().getProdNo());
		
		purchase.setBuyer(user);
		purchase.setPurchaseProd(product);
		

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/getPurchase.jsp");
		modelAndView.addObject("purchase", purchase);
		
		return modelAndView;
	}
	

	@RequestMapping(value="updatePurchase", method=RequestMethod.GET)
	public ModelAndView updatePurchase( @RequestParam("tranNo") int tranNo) throws Exception{

		System.out.println("/purchase/updatePurchase : GET ");
		//Business Logic
		

		Purchase purchase = purchaseService.getPurchase(tranNo);
		
		int prodNo = purchase.getPurchaseProd().getProdNo();
		Product product = productService.getProduct(prodNo);
				
		String userId = purchase.getBuyer().getUserId(); 
		User user = userService.getUser(userId);
		
		purchase.setBuyer(user);
		purchase.setPurchaseProd(product);
		
		// Model 과 View 연결
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/updatePurchase.jsp");
		modelAndView.addObject("purchase", purchase);
		
		return modelAndView;
	}
	
	@RequestMapping(value="updatePurchase", method=RequestMethod.POST)
	public ModelAndView updatePurchase( @ModelAttribute("purchase") Purchase purchase, @RequestParam("tranNo") int tranNo) throws Exception{

		System.out.println("/purchase/updatePurchase : POST ");
		
		purchase.setTranNo(tranNo);
		purchaseService.updatePurchase(purchase);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/purchase/getPurchase?tranNo="+tranNo);		
		
		return modelAndView;
	}
	
	@RequestMapping(value="updatedivyStatus", method=RequestMethod.GET)
	public ModelAndView updatedivyStatus( @ModelAttribute("purchase") Purchase purchase, HttpServletRequest request) throws Exception{

		System.out.println("/purchase/updatedivyStatus : GET");
		//Business Logic
		
		int tranNo = Integer.parseInt(request.getParameter("tranNo")); 
		String divyStatus = request.getParameter("divyStatus");
		
		//==================================================================================
		//송장번호 만들기
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMddHHmm");
		String nowrandom = now.format(formatter);   
		
		String sub = "5";
		String invoice = sub+nowrandom;	
		System.out.println("송장번호: "+invoice);
		//==================================================================================
		
		
		if(divyStatus.equals("001")) {
			divyStatus = "002";
		}else if(divyStatus.equals("002")) {
			divyStatus = "003";
			purchase.setInvoiceNum(invoice);
		}
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		System.out.println("Role: "+user.getRole());
		
		user = userService.getUser(user.getUserId());
		
		purchase.setDivyStatus(divyStatus);
		purchase.setTranNo(tranNo);
		purchase.setBuyer(user);
		
		purchaseService.updateDivyStatus(purchase);
		
		ModelAndView modelAndView = new ModelAndView();
		if(user.getRole().equals("admin")) {
			modelAndView.setViewName("/purchase/listSales");	
			System.out.println("Role: "+user.getRole());
		}else {
			modelAndView.setViewName("/purchase/listPurchase");
			System.out.println("Role: "+user.getRole());
		}
			
		
		return modelAndView;
	}

	
	@RequestMapping(value="cancelOrder", method=RequestMethod.GET)
	public ModelAndView cancelOrder(@RequestParam("tranNo") int tranNo) throws Exception{

		System.out.println("/purchase/cancelOrder : GET");
		//Business Logic
		
		Purchase purchase = purchaseService.getPurchase(tranNo);
		
		int quantity = purchase.getPurchaseQuantity();
		int prodNo = purchase.getPurchaseProd().getProdNo();
		
		purchaseService.cancelOrder(quantity, prodNo);
		
		System.out.println("구매취소완료");
		
		purchase.setDivyStatus("000");
		purchaseService.updateDivyStatus(purchase);
		
		System.out.println("코드변경완료");
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/listPurchase");		
		
		return modelAndView;
	}
	

	@RequestMapping(value="listPurchase" )
	public ModelAndView listPurchase( @ModelAttribute("search") Search search ,  HttpServletRequest request) throws Exception{
		
		System.out.println("/purchase/listPurchase : GET / POST ");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		
		String buyerId = user.getUserId();
		
		
		
		// Business logic 수행
		Map<String , Object> map=purchaseService.getPurchaseList(search, buyerId);
		
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		// Model 과 View 연결

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/listPurchase.jsp");
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		modelAndView.addObject("user", user);
		
		
		//return "forward:/purchase/listPurchase.jsp";
		return modelAndView;
	}
	
	@RequestMapping(value="listSales")
	public ModelAndView listSales( @ModelAttribute("search") Search search) throws Exception{
		
		System.out.println("/purchase/listSales : GET / POST ");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String , Object> map=purchaseService.getSalesList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/listSales.jsp");
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		
		return modelAndView;
	}
	

	
}