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
import com.siot.IamportRestClient.request.CancelData;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;



@RestController
@RequestMapping("/purchase/*")
public class PurchaseRestController {
	
	///Field
	@Autowired
	@Qualifier("purchaseServiceImpl")
	private PurchaseService purchaseService;
	
	
	private IamportClient api;
	
	//아임포트 키
	public PurchaseRestController(){
		this.api = new IamportClient("4668929381650236","e848ead2dbda804f8abf3d4ea329e8a3017b9c2c47a690b805418cae52fade5c59608e28e4230dc3");
	}
	
	//아임포트 결제
	@RequestMapping(value="json/verifyIamport")
	public IamportResponse<Payment> paymentByImpUid(Model model, Locale locale, HttpSession session, @RequestParam("imp_uid") String imp_uid) throws IamportResponseException, IOException{	
		
			return api.paymentByImpUid(imp_uid);
			
	}
	
	//아임포트 환불
	@RequestMapping("json/cancleIamport")
	public IamportResponse<Payment> cancelPaymentByImpUid(@RequestParam("imp_uid") String imp_uid) throws IamportResponseException, IOException {
		
		System.out.println("cancleIamport Start");
		System.out.println("imp_uid:"+ imp_uid);
		
		
		CancelData cancelData = new CancelData(imp_uid, true);

		return api.cancelPaymentByImpUid(cancelData);
	}
	
	
}


