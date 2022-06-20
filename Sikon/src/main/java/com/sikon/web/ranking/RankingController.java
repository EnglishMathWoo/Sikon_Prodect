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

	
	@RequestMapping(value = "listRecipe")
	public String listRecipe(@ModelAttribute("search") Search search, Model model) throws Exception {

		System.out.println("/ranking/listRecipe : POST/get");

		System.out.println("search:" + search);
				
		search.setPageSize(pageSize);
		
		// Business logic 수행
		Map<String, Object> map = rankingService.getRecipeList(search);

		System.out.println("list=" + map.get("list"));

		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("search", search);

		return "forward:/ranking/listRecipeRanking.jsp";
	}
	
	@RequestMapping(value = "listProduct")
	public String listProduct(@ModelAttribute("search") Search search, Model model) throws Exception {

		System.out.println("/ranking/listProduct : POST/get");

		System.out.println("search:" + search);
			
		search.setPageSize(pageSize);
			
		// Business logic 수행
		Map<String, Object> map = rankingService.getProductList(search);

		System.out.println("list=" + map.get("list"));

		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("search", search);

		return "forward:/ranking/listProductRanking.jsp";
	}
	
	
	@RequestMapping(value = "listLove")
	public String listLove(@ModelAttribute("search") Search search, Model model) throws Exception {

		System.out.println("/ranking/listLove : POST/get");

		System.out.println("search:" + search);
			
		search.setPageSize(pageSize);
			
		// Business logic 수행
		Map<String, Object> map = rankingService.getLoveList(search);

		System.out.println("list=" + map.get("list"));

		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("search", search);

		return "forward:/ranking/listLoveRanking.jsp";
	}
	

}