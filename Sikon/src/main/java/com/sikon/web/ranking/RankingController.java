package com.sikon.web.ranking;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.cook.CookService;
import com.sikon.service.ranking.RankingService;
import com.sikon.service.recipe.RecipeService;

//랭킹 Controller
@Controller
@RequestMapping("/ranking/*")
public class RankingController {

	/// Field
	@Autowired
	@Qualifier("rankingServiceImpl")
	private RankingService rankingService;
	
	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;
	
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;

	public RankingController() {
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	@RequestMapping(value = "listCook")
	public String listCook(@ModelAttribute("search") Search search, Model model, HttpServletRequest request) throws Exception {

		System.out.println("/ranking/listCook :  POST/get");

		System.out.println("search:" + search);
		
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		
		if (search.getOrderCondition() == null) {
			search.setOrderCondition("0");
		}
		
		search.setPageSize(pageSize);
			

		// Business logic 수행
		Map<String, Object> map = rankingService.getCookList(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println("cook=" + map.get("list"));
		System.out.println("resultPage=" + resultPage);

		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/ranking/listCook.jsp";
	}
}