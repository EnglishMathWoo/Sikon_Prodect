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
import com.sikon.service.ranking.RankingService;
import com.sikon.service.user.UserService;
import com.sikon.service.cart.CartService;
import com.sikon.service.coupon.CouponService;



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
	@Autowired
	@Qualifier("rankingServiceImpl")
	private RankingService rankingService;
	
		
	public PurchaseController(){
		System.out.println(this.getClass());
	}
	

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	
	
	
	//상품 단일구매 GET
	@RequestMapping(value="addPurchase", method=RequestMethod.GET)
	public ModelAndView addPurchase(@RequestParam("prodNo") int prodNo, @RequestParam("quantity") int quantity, HttpServletRequest request) throws Exception {

		
		System.out.println("/purchase/addPurchase : GET");
		
		System.out.println("quantity: "+quantity);
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		
		User buyer = userService.getUser(user.getUserId());
		
		
		System.out.println(buyer.getHoldpoint());
		
		Product product = productService.getProduct(prodNo);
		
		List list = couponService.getMyCoupon(buyer.getUserId());
		
		//==================================================================================
		//결제 uid 만들기
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMddHHmmss");
		String nowrandom = now.format(formatter);   
		
		String userid = buyer.getUserId().replace("@", "");
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
		modelAndView.addObject("user", buyer);
		
		return modelAndView;
	}
	
	//상품 단일구매 POST
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
		
		purchase.setBuyer(user);
		purchase.setPurchaseProd(product);
		purchase.setDivyStatus("001");
		purchase.setSerialNo(serialNo);
		purchase.setReviewStatus("001");
		
		int quantity = purchase.getPurchaseQuantity();
		
		System.out.println("purchase: "+purchase);
		purchaseService.addPurchase(purchase);
		
		System.out.println("quantity: "+quantity);
		System.out.println("prodNo: "+prodNo);
		purchaseService.updateStock(quantity, prodNo);
		
		//==================================================================================
		//포인트 적용
		
		Point point = new Point();
		
		int usedpoint = purchase.getUsedPoint();
		int totalpoint = user.getHoldpoint() - usedpoint;
		
		if(purchase.getUsedPoint() > 0) {
		
		System.out.println("usedpoint: "+usedpoint);
		System.out.println("totalpoint: "+totalpoint);
		point.setPointScore(usedpoint);
		point.setTotalPoint(totalpoint);
		point.setUserId(userId);
		point.setPointType("USE");
		point.setPointCategory("str");
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint, userId);
		
		}
		
		int earnpoint = purchase.getEarnPoint();
		
		point.setPointScore(earnpoint);
		point.setTotalPoint(totalpoint+earnpoint);
		point.setUserId(userId);
		point.setPointType("EARN");
		point.setPointCategory("str");
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint+earnpoint, userId);
		
		//==================================================================================
		// 쿠폰 사용하기
		
		Coupon coupon = new Coupon();
		if(purchase.getUsedCoupon().equals("")) {
			purchase.setUsedCoupon(null);			
		}

		if(purchase.getUsedCoupon() != null) {
			int issueNo = Integer.parseInt(purchase.getUsedCoupon());
			System.out.println("issueNo: "+issueNo);
			
			coupon = couponService.getIssuedCoupon(issueNo);
			coupon.setIssueStatus("002");
			System.out.println("coupon: "+coupon);
			
			couponService.updateIssueStatus(coupon);
		}
		//==================================================================================
		
		Map map = new HashMap();
		
		String serial = serialNo;
		int price = purchase.getPurchaseProd().getProdDisPrice();
		int prodquantity = purchase.getPurchaseQuantity();
		int divyfee = 3000;
		int couponvalue = coupon.getDiscountValue();
		double couponRate = coupon.getDiscountRate();
		int pointpay = purchase.getUsedPoint();

		map.put("prodprice", price);
		map.put("prodquantity", prodquantity);
		map.put("divyfee", divyfee);
		map.put("couponvalue", couponvalue);
		map.put("couponRate", couponRate);
		map.put("pointpay", pointpay);
		map.put("serial", serial);

		System.out.println("couponvalue: "+couponvalue);
		System.out.println("couponRate: "+couponRate);
		
		//==================================================================================		
		
		for(int i=0; i<quantity; i++) {
			rankingService.addPurchase(prodNo, serialNo);
		}
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/readPurchase.jsp");
		modelAndView.addObject("purchase", purchase);
		modelAndView.addObject("purchaseInfo", map);
		
		return modelAndView;
	}


	//장바구니 일괄구매 GET
	@RequestMapping(value="addPurchaseByCart", method=RequestMethod.GET)
	public String addPurchaseByCart(@RequestParam("cartNo") int[] cartNo,  Model model, HttpServletRequest request) throws Exception {

		System.out.println("/addPurchaseByCart : GET");
	
	
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		
		User buyer = userService.getUser(user.getUserId());
		
		//==================================================================================
		//결제 uid 만들기
		LocalDateTime now = LocalDateTime.now();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyMMddHHmmss");
		String nowrandom = now.format(formatter);   
		
		String userid = buyer.getUserId().replace("@", "");
		String sub = userid.replace(userid.substring(userid.length()-4, userid.length()), "");
		String uid = sub+nowrandom;	
		System.out.println("uid: "+uid);
		//==================================================================================
		
		
		List list = new ArrayList();
		
		for(int cartnum : cartNo) {
			
			Cart cart = cartService.getCart(cartnum);
			Product product = productService.getProduct(cart.getCartProd().getProdNo());
			cart.setCartProd(product);
			
			list.add(cart);
			
		}
		
		System.out.println("cartlist: "+list);
		
		List couponlist = couponService.getMyCoupon(buyer.getUserId());
		
		model.addAttribute("cartlist", list);
		model.addAttribute("user", buyer);
		model.addAttribute("uid", uid);
		model.addAttribute("coupon", couponlist);
		
		
		return "forward:/purchase/addPurchaseViewByCart.jsp";
	}	
	
	//장바구니 일괄구매 POST
	@RequestMapping(value="addPurchaseByCart", method=RequestMethod.POST)
	public ModelAndView addPurchaseByCart(@ModelAttribute("purchase") Purchase purchase, @RequestParam("cartNo") int[] cartNo, @RequestParam("userId") String userId ) throws Exception {

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
		
		int productPrice = 0;
		int num = 0;

		for(int i=0; i<cartNo.length; i++) {
			
			Cart cart = cartService.getCart(cartNo[i]);
			
			Product product = productService.getProduct(cart.getCartProd().getProdNo());
			productPrice += (product.getProdDisPrice()*cart.getQuantity());
			num ++;
			
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
			purchaseByCart.setUsedCoupon(purchase.getUsedCoupon());
			purchaseByCart.setPurchaseQuantity(cart.getQuantity());
			purchaseByCart.setDivyStatus("001");
			purchaseByCart.setPaymentOpt("KA");
			purchaseByCart.setSerialNo(serialNo);
			purchaseByCart.setReviewStatus("001");
			purchaseByCart.setImpNumber(purchase.getImpNumber());
			
			list.add(purchaseByCart);
			
			purchaseService.addPurchase(purchaseByCart);
			
			System.out.println(cart.getQuantity());
			System.out.println(product.getProdNo());
			purchaseService.updateStock(cart.getQuantity(), product.getProdNo());
			
			cartService.deleteCart(cartNo[i]);
			
			for(int k=0; k<cart.getQuantity(); k++) {
				rankingService.addPurchase(cart.getCartProd().getProdNo(), serialNo);
			}
			
		
		}

		//==================================================================================
		//포인트 적용
		
		Point point = new Point();
		int usedpoint = purchase.getUsedPoint();
		int totalpoint = user.getHoldpoint() - usedpoint;
		
		if(purchase.getUsedPoint() > 0) {
		
		System.out.println("usedpoint: "+usedpoint);
		System.out.println("totalpoint: "+totalpoint);
		point.setPointScore(usedpoint);
		point.setTotalPoint(totalpoint);
		point.setUserId(userId);
		point.setPointType("USE");
		point.setPointCategory("str");
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint, userId);
		
		}
		
		int earnpoint = purchase.getEarnPoint();
		
		point.setPointScore(earnpoint);
		point.setTotalPoint(totalpoint+earnpoint);
		point.setUserId(userId);
		point.setPointType("EARN");
		point.setPointCategory("str");
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint+earnpoint, userId);
		
		
		//==================================================================================
		// 쿠폰 사용하기
		System.out.println("쿠폰사용 시작");
		
		Coupon usedcoupon = new Coupon();
		
			if(purchase.getUsedCoupon().equals("none")) {
				purchase.setUsedCoupon(null);
			}
			
			if(purchase.getUsedCoupon() != null) {
				int issueNo = Integer.parseInt(purchase.getUsedCoupon());
				usedcoupon = couponService.getIssuedCoupon(issueNo);
				usedcoupon.setIssueStatus("002");
				couponService.updateIssueStatus(usedcoupon);
			}
			
		System.out.println("쿠폰사용 끝");
		
		//==================================================================================

		Map map = new HashMap();
		
		String serial = serialNo;
		int price = productPrice;
		int divyfee = 3000*num;
		int couponvalue = usedcoupon.getDiscountValue();
		double couponRate = usedcoupon.getDiscountRate();
		int pointpay = purchase.getUsedPoint();

		map.put("prodprice", price);
		map.put("divyfee", divyfee);
		map.put("couponvalue", couponvalue);
		map.put("couponRate", couponRate);
		map.put("pointpay", pointpay);
		map.put("serial", serial);

		//==================================================================================	

		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/readPurchaseByCart.jsp");
		modelAndView.addObject("purchaselist", list);
		modelAndView.addObject("purchaseInfo", map);
		
		return modelAndView;
	}


/*
	// 구매내역 가져오기	
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
*/
	
	//주문일련번호로 내역 가져오기
	@RequestMapping( value="getPurchaseBySerial", method=RequestMethod.GET)
	public ModelAndView getPurchaseBySerial( @RequestParam("serialNo") String serialNo) throws Exception {
		
		System.out.println("/purchase/getPurchaseBySerial : GET ");
		
		List purchaselist = new ArrayList();
		
		List list = purchaseService.getPurchaseBySerial(serialNo);
		Map map = new HashMap();
		
		String serial = "";
		int totalprice = 0;
		int divyfee = 0;
		int couponvalue = 0;
		double couponRate = 0;
		int pointpay = 0;
		
		for(int i=0; i<list.size();i++) {
			
			Purchase purchase = purchaseService.getPurchase(((Purchase)list.get(i)).getTranNo());
			User user = userService.getUser(((Purchase)list.get(i)).getBuyer().getUserId());
			Product product = productService.getProduct(((Purchase)list.get(i)).getPurchaseProd().getProdNo());			
			purchase.setBuyer(user);
			purchase.setPurchaseProd(product);
			purchaselist.add(purchase);
			
			
			if(purchase.getUsedCoupon()==null || purchase.getUsedCoupon().equals("none")) {
				
				purchase.setUsedCoupon(null);
				
			}else if(purchase.getUsedCoupon() != null) {
				
				Coupon coupon = couponService.getIssuedCoupon(Integer.parseInt(purchase.getUsedCoupon())); 
				couponvalue = coupon.getDiscountValue();
				couponRate = coupon.getDiscountRate();
				
			}
				totalprice += (product.getProdDisPrice()*purchase.getPurchaseQuantity());
				divyfee += purchase.getDivyFee();
				pointpay = purchase.getUsedPoint();
				serial = purchase.getSerialNo();
				
		}	
		
		
		map.put("totalprice", totalprice);
		map.put("divyfee", divyfee);
		map.put("couponvalue", couponvalue);
		map.put("couponRate", couponRate);
		map.put("pointpay", pointpay);
		map.put("serial", serial);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/getPurchaseBySerial.jsp");
		modelAndView.addObject("purchaselist", purchaselist);
		modelAndView.addObject("purchaseinfo", map);
		
		return modelAndView;
	}

	
	//주문일련번호로 구매내역 수정 GET
	@RequestMapping(value="updatePurchaseBySerial", method=RequestMethod.GET)
	public ModelAndView updatePurchaseBySerial( @RequestParam("serialNo") String serialNo) throws Exception{

		System.out.println("/purchase/updatePurchaseBySerial : GET ");

		List list = purchaseService.getPurchaseBySerial(serialNo);
		
		List purchaselist = new ArrayList();
		Map map = new HashMap();
		
		String serial = "";
		int totalprice = 0;
		int divyfee = 0;
		int couponpay = 0;
		int pointpay = 0;
		
		for(int i=0; i<list.size();i++) {
			
			Purchase purchase = purchaseService.getPurchase(((Purchase)list.get(i)).getTranNo());
			User user = userService.getUser(((Purchase)list.get(i)).getBuyer().getUserId());
			Product product = productService.getProduct(((Purchase)list.get(i)).getPurchaseProd().getProdNo());			
			purchase.setBuyer(user);
			purchase.setPurchaseProd(product);
			
			purchaselist.add(purchase);
			
			totalprice += product.getProdDisPrice();
			divyfee += purchase.getDivyFee();
			pointpay += purchase.getUsedPoint();
			
			serial = purchase.getSerialNo();
			
			System.out.println(list.get(i));
		}	
		
		map.put("totalprice", totalprice);
		map.put("divyfee", divyfee);
		map.put("couponpay", couponpay);
		map.put("pointpay", pointpay);
		map.put("serial", serial);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/updatePurchaseBySerial.jsp");
		modelAndView.addObject("purchaselist", purchaselist);
		modelAndView.addObject("purchaseinfo", map);
		
		return modelAndView;
				
	}
	
	
	//주문일련번호로 구매내역 수정 POST
	@RequestMapping(value="updatePurchaseBySerial", method=RequestMethod.POST)
	public ModelAndView updatePurchaseBySerial( @ModelAttribute("purchase") Purchase purchase, @RequestParam("tranlist") int[] tranlist) throws Exception{

		System.out.println("/purchase/updatePurchaseBySerial : POST ");
		
		
		for(int i=0; i<tranlist.length; i++) {
			
			purchase.setTranNo(tranlist[i]);
			purchaseService.updatePurchase(purchase);
			
		}
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("redirect:/purchase/getPurchaseBySerial?serialNo="+purchase.getSerialNo());		
		
		return modelAndView;
	}
	
	
	//배송상태 변경(업데이트)
	@RequestMapping(value="updatedivyStatus", method=RequestMethod.GET)
	public ModelAndView updatedivyStatus( @ModelAttribute("purchase") Purchase purchase, HttpServletRequest request) throws Exception{

		System.out.println("/purchase/updatedivyStatus : GET");
		
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


	//구매취소
	@RequestMapping(value="cancelOrder", method=RequestMethod.GET)
	public ModelAndView cancelOrder(@RequestParam("serialNo") String serialNo, HttpServletRequest request) throws Exception{

		System.out.println("/purchase/cancelOrder : GET");
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		User buyer = userService.getUser(user.getUserId());
		
		List list = purchaseService.getPurchaseBySerial(serialNo);
		
		for(int i=0; i<list.size(); i++) {
			int quantity = ((Purchase)list.get(i)).getPurchaseQuantity();
			int prodNo = ((Purchase)list.get(i)).getPurchaseProd().getProdNo();
			
			purchaseService.cancelOrder(quantity, prodNo);
			
			((Purchase)list.get(i)).setDivyStatus("000");
			purchaseService.updateDivyStatus(((Purchase)list.get(i)));
			
			for(int k=0; k<quantity; k++) {
				rankingService.deletePurchase(prodNo, serialNo);
			}
			
		}
		
		int usedPoint = ((Purchase)list.get(0)).getUsedPoint();
		String usedCouponNo = ((Purchase)list.get(0)).getUsedCoupon();
		
		if(usedCouponNo != null && !usedCouponNo.equals("none")) {
			Coupon usedcoupon = couponService.getIssuedCoupon(Integer.parseInt(usedCouponNo));
			usedcoupon.setIssueStatus("001");
			couponService.updateIssueStatus(usedcoupon);
		}
		
		Point point = new Point();
		int usedpoint = ((Purchase)list.get(0)).getUsedPoint();
		int totalpoint = buyer.getHoldpoint() + usedpoint;
		
		point.setPointScore(usedpoint);
		point.setTotalPoint(totalpoint);
		point.setUserId(buyer.getUserId());
		point.setPointType("CANCELUSE");
		point.setPointCategory("str");
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint, buyer.getUserId());
		

		int earnpoint = ((Purchase)list.get(0)).getEarnPoint();
		totalpoint = totalpoint - earnpoint;
		point.setPointScore(earnpoint);
		point.setTotalPoint(totalpoint);
		point.setUserId(buyer.getUserId());
		point.setPointType("CANCELEARN");
		point.setPointCategory("str");
		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint, buyer.getUserId());
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/listPurchase");		
		
		return modelAndView;
	}

	
	// 내가 구매한 목록 가져오기
	@RequestMapping(value="listPurchase" )
	public ModelAndView listPurchase( @ModelAttribute("search") Search search ,  HttpServletRequest request) throws Exception{
		
		System.out.println("/purchase/listPurchase : GET / POST ");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(8);
		
		
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("user");
		
		String buyerId = user.getUserId();
		

		Map<String , Object> map=purchaseService.getPurchaseList(search, buyerId);
		
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, 8);
		System.out.println(resultPage);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/mypage/listPurchase.jsp");
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		modelAndView.addObject("user", user);
		
		return modelAndView;
	}
	
	
	// 판매목록 가져오기(관리자)
	@RequestMapping(value="listSales")
	public ModelAndView listSales( @ModelAttribute("search") Search search) throws Exception{
		
		System.out.println("/purchase/listSales : GET / POST ");
		
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(10);
		
		Map<String , Object> map=purchaseService.getSalesList(search);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, 10);
		System.out.println(resultPage);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/purchase/listSales.jsp");
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		
		return modelAndView;
	}
	

	
}