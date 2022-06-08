package com.sikon.web.recipe;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.domain.Ingredient;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.User;
import com.sikon.service.recipe.RecipeService;
import com.sikon.service.review.ReviewService;

//레시피 Controller
@Controller
@RequestMapping("/recipe/*")
public class RecipeController {

	/// Field
	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;

	@Autowired
	@Qualifier("reviewServiceImpl")
	private ReviewService reviewService;

	public RecipeController() {
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@RequestMapping(value = "addRecipe", method = RequestMethod.POST)
	public String addRecipe(@ModelAttribute("recipe") Recipe recipe,
			@RequestParam("multiImg") MultipartFile[] fileArray,
			@RequestParam("ingredientName") String[] ingredientName,
			@RequestParam("ingredientAmount") String[] ingredientAmount, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/recipe/addRecipe : post");
		System.out.println("recipe=" + recipe);

		// <td>에서 ingredientName, ingredientAmount이 String array로 넘어옴
		for (int j = 0; j < ingredientName.length; j++) {
			System.out.println(ingredientName[j]);
			System.out.println(ingredientAmount[j]);
		}

		String FILE_SERVER_PATH = "C:\\Users\\bitcamp\\git\\Sikon_Project\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\";
//		String FILE_SERVER_PATH = "C:\\Users\\wnstn\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\";

		String newFileName = "";

		for (int i = 0; i < fileArray.length; i++) {

			if (!fileArray[i].getOriginalFilename().isEmpty()) {
				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
				model.addAttribute("msg", "File uploaded successfully.");

			} else {
				model.addAttribute("msg", "Please select a valid mediaFile..");
			}

			newFileName += fileArray[i].getOriginalFilename();

		}

		recipe.setRecipeImg(newFileName);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		recipe.setWriter(user);

		// ingredientName, ingredientAmount 개수만큼 Ingredient 객체 생성해서 set => list에 담기
		List<Ingredient> list = new ArrayList<Ingredient>();
		for (int i = 0; i < ingredientName.length; i++) {
			Ingredient ingredient = new Ingredient();
			ingredient.setIngredientName(ingredientName[i]);
			ingredient.setIngredientAmount(ingredientAmount[i]);
			list.add(ingredient);
		}

		System.out.println("list=" + list);

		Map map = new HashMap();
		map.put("list", list);

		recipeService.addRecipe(recipe, map);

		model.addAttribute("recipe", recipe);
		model.addAttribute("ingredient", list);

		return "forward:/recipe/readRecipe.jsp";
	}

	// @ModelAttribute("search") Search search,
	@RequestMapping(value = "getRecipe")
	public String getRecipe(@RequestParam("recipeNo") int recipeNo, Model model) throws Exception {

		System.out.println("/recipe/getRecipe : post / get");
		System.out.println("recipeNo" + recipeNo);

		// 레시피+재료를 list로 한 번에 받음
		List list = recipeService.getRecipe(recipeNo);

		System.out.println("list=" + list);

		// 하나의 레시피에 재료는 여러개이므로 list에는 재료만 다른 recipe객체들이 담겨있음
		// recipe에 대한 값은 모두 같으므로 첫번째 list의 값만을 recipe로 넘겨준다
		model.addAttribute("recipe", list.get(0));

		// 재료는 list 묶음으로 넘겨 view에서 for문을 통해 나타낸다
		model.addAttribute("list", list);

		/*
		 * 리뷰
		 * 
		 * model.addAttribute("resultPage", resultPage); model.addAttribute("search",
		 * search);
		 * 
		 * if (search.getCurrentPage() == 0) { search.setCurrentPage(1); }
		 * search.setPageSize(pageSize); System.out.println("모냐recipeNo" + recipeNo);
		 * 
		 * Map<String, Object> map = reviewService.getReviewList(search, 200, recipeNo);
		 * System.out.println("map:" + map.get("list")); Page resultPage = new
		 * Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(),
		 * pageUnit, pageSize); System.out.println(resultPage);
		 * 
		 */

		return "forward:/recipe/getRecipe.jsp";
	}

	@RequestMapping(value = "updateRecipe", method = RequestMethod.GET)
	public String updateRecipe(@RequestParam("recipeNo") int recipeNo, Model model) throws Exception {

		System.out.println("/recipe/updateRecipe :  get");

		List list = recipeService.getRecipe(recipeNo);
		System.out.println(list);
		
		model.addAttribute("ingredient", list);
		model.addAttribute("recipe", list.get(0));

		return "forward:/recipe/updateRecipe.jsp";
	}

	@RequestMapping(value = "updateRecipe", method = RequestMethod.POST)
	public String updateRecipe(@ModelAttribute("recipe") Recipe recipe,
			@RequestParam("multiImg") MultipartFile[] fileArray,
			@RequestParam("ingredientName") String[] ingredientName,@RequestParam("ingredientNo") int[] ingredientNo,
			@RequestParam("ingredientAmount") String[] ingredientAmount, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/recipe/updateRecipe :  POST");
		// Business Logic

		
		String newFileName = "";

		String FILE_SERVER_PATH = "C:\\Users\\bitcamp\\git\\Sikon_Project\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\";
//		String FILE_SERVER_PATH = "C:\\Users\\wnstn\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\";

		for (int i = 0; i < fileArray.length; i++) {

			if (!fileArray[i].getOriginalFilename().isEmpty()) {
				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
				model.addAttribute("msg", "File uploaded successfully.");

			} else {
				model.addAttribute("msg", "Please select a valid mediaFile..");
			}

			newFileName += fileArray[i].getOriginalFilename();

		}

		recipe.setRecipeImg(newFileName);

		// ingredientName, ingredientAmount 개수만큼 Ingredient 객체 생성해서 set => list에 담기
		List<Ingredient> list = new ArrayList<Ingredient>();
		for (int i = 0; i < ingredientName.length; i++) {
			Ingredient ingredient = new Ingredient();
			ingredient.setRecipeNo(recipe.getRecipeNo());
			ingredient.setIngredientName(ingredientName[i]);
			ingredient.setIngredientAmount(ingredientAmount[i]);
			ingredient.setIngredientNo(ingredientNo[i]);
			list.add(ingredient);
		}

		System.out.println("list=" + list);
		

		Map map = new HashMap();
		map.put("list", list);

		recipeService.updateRecipe(recipe, map);

		return "forward:/recipe/getRecipe.jsp";
	}

	@RequestMapping(value = "listRecipe")
	public String listRecipe(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/recipe/listRecipe :  POST/get");

		System.out.println("search:" + search);

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}
		System.out.println("orderCondition=" + search.getOrderCondition());

		if (search.getOrderCondition() == null) {
			search.setOrderCondition("100");
		}

		System.out.println("orderCondition=" + search.getOrderCondition());

		// 으음 오류 안나면 삭제
		search.setOrderCondition(search.getOrderCondition().replace(",", ""));
		search.setPageSize(pageSize);

		// Business logic 수행
		Map<String, Object> map = recipeService.getRecipeList(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println("list=" + map.get("list"));
		System.out.println("resultPage=" + resultPage);

		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/recipe/listRecipe.jsp";
	}

	// 내가 쓴 레시피(마이페이지)
	@RequestMapping(value = "listMyRecipe")
	public ModelAndView listMyRecipe(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/recipe/listMyRecipe :  POST/get");

		System.out.println("search:" + search);

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		Map<String, Object> map = recipeService.getMyRecipeList(search, user.getUserNickname());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		System.out.println("list=" + map.get("list"));
		System.out.println("resultPage=" + resultPage);

		// Model 과 View 연결
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		modelAndView.setViewName("forward:/recipe/myRecipe.jsp");

		return modelAndView;
	}

	// 레시피 선택 삭제
	@RequestMapping(value = "deleteRecipe")
	public String deleteRecipe(@RequestParam("recipeList") int[] recipeList) throws Exception {

		System.out.println("/recipe/deleteRecipe : POST");

		for (int i = 0; i < recipeList.length; i++) {
			System.out.println(recipeList[i]);
		}

		for (int i = 0; i < recipeList.length; i++) {
			recipeService.deleteRecipe(recipeList[i]);
		}

		return "redirect:/recipe/listMyRecipe";
	}
	
	// 레시피 리뷰 많은 순 정렬
//	@RequestMapping(value = "bestRecipeList")
//	public String bestRecipeList(Model model) throws Exception {
//	
//		Map<String, Object> map = recipeService.bestRecipeList();
//		model.addAttribute("list", map.get("list"));
//
//		return "forward:/main.jsp";
//	}

}