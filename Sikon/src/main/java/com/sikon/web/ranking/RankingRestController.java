package com.sikon.web.ranking;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.ranking.RankingService;
import com.sikon.service.recipe.RecipeService;

//레시피 RestController
@RestController
@RequestMapping("/ranking/*")
public class RankingRestController {

	/// Field
	@Autowired
	@Qualifier("rankingServiceImpl")
	private RankingService rankingService;

	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	
	

	public RankingRestController() {
		System.out.println(this.getClass());
	}

	// 무한스크롤
	@RequestMapping(value = "json/listRecipe", method = RequestMethod.POST)
	public Map listRecipe(@RequestBody Search search) throws Exception {

		System.out.println("/ranking/json/listRecipe : POST");
		// Business Logic

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		
		if (search.getOrderCondition() == null) {
			search.setOrderCondition("0");
		}
		
		search.setPageSize(pageSize);

		Map<String, Object> map = rankingService.getRecipeList(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println(resultPage);

		Map map2 = new HashMap();
		map2.put("list", map.get("list"));
		map2.put("resultPage", map);
		map2.put("search", search);

		System.out.println("map=" + map);
		return map2;

	}

}