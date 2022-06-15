package com.sikon.web.purchase;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sikon.service.purchase.PurchaseService;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;


//==> 회원관리 RestController
@RestController
@RequestMapping("/purchase/*")
public class PurchaseRestController {
	
	///Field
	@Autowired
	@Qualifier("purchaseServiceImpl")
	private PurchaseService purchaseService;
	
	
	private IamportClient api;
	
	
	public PurchaseRestController(){
		this.api = new IamportClient("4668929381650236","e848ead2dbda804f8abf3d4ea329e8a3017b9c2c47a690b805418cae52fade5c59608e28e4230dc3");
	}
	
	
	@RequestMapping(value="json/verifyIamport")
	public IamportResponse<Payment> paymentByImpUid(Model model, Locale locale, HttpSession session, @RequestParam("imp_uid") String imp_uid) throws IamportResponseException, IOException{	
		
			return api.paymentByImpUid(imp_uid);
			
	}
	
	
}


