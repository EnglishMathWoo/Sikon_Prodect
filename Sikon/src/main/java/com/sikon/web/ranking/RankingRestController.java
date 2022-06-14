package com.sikon.web.ranking;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Recipe;
import com.sikon.service.recipe.RecipeService;

//레시피 RestController
@RestController
@RequestMapping("/ranking/*")
public class RankingRestController {

	/// Field

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
		
		if(search.getSearchCondition()==null) {
			search.setSearchCondition("0");
		}

		if (search.getOrderCondition() == null) {
			search.setOrderCondition("4");
		}
		
		search.setPageSize(pageSize);

		Map<String, Object> map = recipeService.getRecipeList(search);

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