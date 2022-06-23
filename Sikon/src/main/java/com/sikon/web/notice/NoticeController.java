package com.sikon.web.notice;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Notice;
import com.sikon.service.notice.NoticeService;


@Controller
@RequestMapping("/notice/*")
public class NoticeController {
	
	///Field
	@Autowired
	@Qualifier("noticeServiceImpl")
	private NoticeService noticeService;
		
	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	
	///Constructor
	public NoticeController(){
		System.out.println(this.getClass());
	}
	
	
	///Method
	@RequestMapping( value="/addNotice", method=RequestMethod.POST )
	public String addNotice( @ModelAttribute("notice") Notice notice, Model model ) throws Exception{

		System.out.println("/notice/addNotice : POST");
		
		noticeService.addNotice(notice);
		
		model.addAttribute(notice);
		
		return "forward:/notice/readNotice.jsp";
	}
	
	@RequestMapping(value="/getNotice", method=RequestMethod.GET)
	public String getNotice( @RequestParam("noticeNo") int noticeNo , Model model ) throws Exception {
		
		System.out.println("/notice/getNotice : GET");
		
		Notice notice = noticeService.getNotice(noticeNo);
		
		model.addAttribute("notice", notice);
	
		return "forward:/notice/getNotice.jsp";
	}
	
	@RequestMapping("/listNotice")
	public String listNotice( @ModelAttribute("search") Search search , @RequestParam("menu") String menu, Model model ) throws Exception{
		
		System.out.println("/listNotice");
			
		if(search.getCurrentPage() ==0 ){
			search.setCurrentPage(1);
		}
		search.setPageSize(pageSize);
	
		Map<String , Object> map = noticeService.getNoticeList(search);
		Page resultPage = new Page( search.getCurrentPage(), ((Integer)map.get("totalCount")).intValue(), pageUnit, pageSize);
		
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);
		model.addAttribute("menu", menu);
		
		return "forward:/notice/listNotice.jsp";
	}
	
	@RequestMapping( value="/updateNotice", method=RequestMethod.GET )
	public String updateNoticeView( @RequestParam("noticeNo") int noticeNo, Model model ) throws Exception{

		System.out.println("/notice/updateNotice : GET");

		Notice notice = noticeService.getNotice(noticeNo);
		
		model.addAttribute("notice", notice);
		
		return "forward:/notice/updateNotice.jsp";
	}
	
	@RequestMapping( value="/updateNotice", method=RequestMethod.POST )
	public String updateNotice( @ModelAttribute("notice") Notice notice ) throws Exception{

		System.out.println("/notice/updateNotice : POST");
		
		noticeService.updateNotice(notice);
		
		return "redirect:/notice/getNotice?noticeNo="+notice.getNoticeNo();
	}
	
	@RequestMapping( value="/deleteNotice", method=RequestMethod.GET)
	public String deleteNotice( @RequestParam("checkCount") int checkCount, @RequestParam("checkList") int[] checkList ) throws Exception{

		System.out.println("/notice/deleteNotice : GET");
		
		for(int i=0; i<checkCount; i++) {
			noticeService.deleteNotice(checkList[i]);
		}		

		return "forward:/notice/listNotice?menu=manage";
	}
	
}