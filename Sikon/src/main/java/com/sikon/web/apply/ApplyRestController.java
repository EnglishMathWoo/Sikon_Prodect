package com.sikon.web.apply;


import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.apply.ApplyService;
import com.sikon.service.cook.CookService;
import com.sikon.service.domain.Apply;
import com.sikon.service.domain.User;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;





@RestController
@RequestMapping("/apply/*")

public class ApplyRestController {
	
	
	@Autowired
	@Qualifier("applyServiceImpl")
	private ApplyService applyService;
	
	
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;
	
	@Value("#{commonProperties['pageUnit']}")
	//@Value("#{commonProperties['pageUnit'] ?: 3}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	//@Value("#{commonProperties['pageSize'] ?: 2}")
	int pageSize;	
	
	
	private IamportClient api;
	
	public ApplyRestController() {
		System.out.println(this.getClass());
		this.api = new IamportClient("4668929381650236","e848ead2dbda804f8abf3d4ea329e8a3017b9c2c47a690b805418cae52fade5c59608e28e4230dc3");
	}	
	

	
	
	@RequestMapping( value="json/listSale", method=RequestMethod.GET )

	public  Map<String, Object> listSale( @RequestBody Search search  ,  HttpServletRequest request) throws Exception{
		
		System.out.println("/purchase/json/listSale : POST");
		
		//Business Logic
		System.out.println(search);
		search.setPageSize(pageSize);
		
		HttpSession session=request.getSession();
		User user=(User)session.getAttribute("user");
		
		
		Map<String , Object> map=applyService.getSaleList(search,user);
		
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		System.out.println(resultPage);
		
		map.put("list", map.get("list"));
		map.put("resultPage", resultPage);
		map.put("search", search);
		
		return map;
	}	
	
	
	@RequestMapping( value="json/saleCount", method=RequestMethod.GET)

	public List<Apply> saleCount( 
			Model model, Apply apply) throws Exception {
		
		System.out.println("/apply/json/saleCount : POST");
		List<Apply> list = applyService.saleCount(apply);
		model.addAttribute("list", list);
		return list;
	}
	
	@RequestMapping(value="json/verifyIamport")
	public IamportResponse<Payment> paymentByImpUid(Model model, Locale locale, HttpSession session, @RequestParam("imp_uid") String imp_uid) throws IamportResponseException, IOException{	
		
			return api.paymentByImpUid(imp_uid);
			
	}
	
	
	@RequestMapping("json/cancleIamport")
	public IamportResponse<Payment> cancelPaymentByImpUid(@RequestParam("imp_uid") String imp_uid) throws IamportResponseException, IOException {
		
		System.out.println("cancleIamport Start");
		System.out.println("imp_uid:"+ imp_uid);
		
		
		CancelData cancelData = new CancelData(imp_uid, true);

		return api.cancelPaymentByImpUid(cancelData);
	}	

}
