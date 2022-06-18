package com.sikon.web.alarm;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

//import com.google.gson.JsonObject;
import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.alarm.AlarmService;
import com.sikon.service.domain.Product;
import com.sikon.service.domain.User;
import com.sikon.service.product.ProductService;


//==> 회원관리 RestController
@RestController
@RequestMapping("/alarm/*")
public class AlarmRestController {
	
	///Field
	@Autowired
	@Qualifier("alarmServiceImpl")
	private AlarmService alarmService;
		
	public AlarmRestController(){
		System.out.println(this.getClass());
	}

	
	@RequestMapping(value="json/addUncheckedAlarm")
	public HttpSession addUncheckedAlarm(HttpSession session) throws Exception{
					
//		Map map2 = new HashMap();
//		map2.put("list", map.get("list"));
//		map2.put("resultPage", resultPage);
//		map2.put("search", search);
//		map2.put("prodNames",mapName.get("list"));
//		
		
		return session;
	}
	
}