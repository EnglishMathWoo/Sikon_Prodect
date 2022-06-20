package com.sikon.web.ranking;

import java.util.Map;

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


@Controller
@RequestMapping("/ranking/*")
public class RankingController {

	///Field
	@Autowired
	@Qualifier("rankingServiceImpl")
	private RankingService rankingService;
	
	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;
	
	@Autowired
	@Qualifier("cookServiceImpl")
	private CookService cookService;

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	
	///Constructor
	public RankingController() {
		System.out.println(this.getClass());
	}
	
	
	///Method
	@RequestMapping(value = "listRecipe")
	public String listRecipe( @ModelAttribute("search") Search search, Model model ) throws Exception {

		System.out.println("/ranking/listRecipe");
				
		search.setPageSize(pageSize);
		
		Map<String, Object> map = rankingService.getRecipeList(search);

		model.addAttribute("list", map.get("list"));
		model.addAttribute("search", search);

		return "forward:/ranking/listRecipeRanking.jsp";
	}
	
	@RequestMapping(value = "listProduct")
	public String listProduct( @ModelAttribute("search") Search search, Model model ) throws Exception {

		System.out.println("/ranking/listProduct");

		search.setPageSize(pageSize);
			
		Map<String, Object> map = rankingService.getProductList(search);

		model.addAttribute("list", map.get("list"));
		model.addAttribute("search", search);

		return "forward:/ranking/listProductRanking.jsp";
	}
	
	@RequestMapping(value = "listLove")
	public String listLove( @ModelAttribute("search") Search search, Model model ) throws Exception {

		System.out.println("/ranking/listLove");
			
		search.setPageSize(pageSize);
			
		Map<String, Object> map = rankingService.getLoveList(search);

		model.addAttribute("list", map.get("list"));
		model.addAttribute("search", search);

		return "forward:/ranking/listLoveRanking.jsp";
	}

}