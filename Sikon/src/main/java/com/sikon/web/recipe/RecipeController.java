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
import com.sikon.service.bookmark.BookmarkService;
import com.sikon.service.domain.Ingredient;
import com.sikon.service.domain.Point;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.User;
import com.sikon.service.point.PointService;
import com.sikon.service.ranking.RankingService;
import com.sikon.service.recipe.RecipeService;
import com.sikon.service.review.ReviewService;

// 레시피 Controller
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

	@Autowired
	@Qualifier("bookmarkServiceImpl")
	private BookmarkService bookmarkService;

	@Autowired
	@Qualifier("rankingServiceImpl")
	private RankingService rankingService;

	@Autowired
	@Qualifier("pointServiceImpl")
	private PointService pointService;

	public RecipeController() {
		System.out.println(this.getClass());
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@Value("#{commonProperties['filepath']}")
	String filePath;

	/// Method
	@RequestMapping(value = "addRecipe", method = RequestMethod.POST)
	public String addRecipe(@ModelAttribute("recipe") Recipe recipe,
			@RequestParam("multiImg") MultipartFile[] fileArray,
			@RequestParam("ingredientName") String[] ingredientName,
			@RequestParam("ingredientAmount") String[] ingredientAmount, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/recipe/addRecipe : post");

		// 다중파일 업로드
		String FILE_SERVER_PATH = filePath;

		String newFileName = "";

		for (int i = 0; i < fileArray.length; i++) {

			if (!fileArray[i].getOriginalFilename().isEmpty()) {
				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
			}
			newFileName += fileArray[i].getOriginalFilename();
		}

		recipe.setRecipeImg(newFileName);

		// 동적테이블로부터 넘어온 재료명, 재료양 처리
		List<Ingredient> list = new ArrayList<Ingredient>();
		for (int i = 0; i < ingredientName.length; i++) {
			Ingredient ingredient = new Ingredient();
			ingredient.setIngredientName(ingredientName[i]);
			ingredient.setIngredientAmount(ingredientAmount[i]);
			list.add(ingredient);
		}

		Map map = new HashMap();
		map.put("list", list);

		// 레시피 등록
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		recipe.setWriter(user);

		recipeService.addRecipe(recipe, map);

		// 포인트 적용
		Point point = new Point();

		int totalpoint = user.getHoldpoint() + 1000;

		point.setPointCategory("REC");
		point.setUserId(user.getUserId());
		point.setPointType("EARN");
		point.setPointScore(1000);

		pointService.addPoint(point);
		pointService.updateHoldPoint(totalpoint, user.getUserId());

		model.addAttribute("recipe", recipe);
		model.addAttribute("ingredient", list);
		model.addAttribute("user", user);

		return "forward:/recipe/readRecipe.jsp";
	}

	@RequestMapping(value = "getRecipe", method = RequestMethod.GET)
	public String getRecipe(@ModelAttribute("search") Search search, @RequestParam("recipeNo") int recipeNo,
			Model model, HttpServletRequest request) throws Exception {

		System.out.println("/recipe/getRecipe : post / get");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);

		// 레시피+재료를 list로 한 번에 받음
		List<Recipe> list = recipeService.getRecipe(recipeNo);

		// 리뷰 조회
		String category = "REC";
		Map map = reviewService.getReviewList(search, category, recipeNo);

		Recipe recipe = recipeService.getRecipeName(recipeNo);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		// 책갈피 중복체크
		if (user != null) {
			int bookmarkStatus = bookmarkService.checkDuplicate(recipeNo, user.getUserId());
			recipe.setBookmarkStatus(bookmarkStatus);

			// 레시피 조회수 +1(레시피 작성자 or 미로그인 회원은 조회수 산정시 제외)
			if (user.getUserId() != recipe.getWriter().getUserId()) {
				recipe.setRecipeViews(recipe.getRecipeViews() + 1);
				recipeService.updateRecipeOnly(recipe);
				rankingService.addRecipeView(recipeNo);
			}
		}

		model.addAttribute("recipe", recipe);
		model.addAttribute("list", list);
		model.addAttribute("review", map.get("list"));

		return "forward:/recipe/getRecipe.jsp";
	}

	@RequestMapping(value = "updateRecipe", method = RequestMethod.GET)
	public String updateRecipe(@RequestParam("recipeNo") int recipeNo, Model model) throws Exception {

		System.out.println("/recipe/updateRecipe :  get");

		List list = recipeService.getRecipe(recipeNo);

		model.addAttribute("ingredient", list);
		model.addAttribute("recipe", list.get(0));

		return "forward:/recipe/updateRecipe.jsp";
	}

	@RequestMapping(value = "updateRecipe", method = RequestMethod.POST)
	public String updateRecipe(@ModelAttribute("recipe") Recipe recipe,
			@RequestParam("multiImg") MultipartFile[] fileArray,
			@RequestParam("ingredientName") String[] ingredientName, @RequestParam("ingredientNo") int[] ingredientNo,
			@RequestParam("ingredientAmount") String[] ingredientAmount, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/recipe/updateRecipe :  POST");

		// 다중파일 업로드
		String newFileName = "";

		String FILE_SERVER_PATH = filePath;
//		String FILE_SERVER_PATH = "C:\\Users\\wnstn\\git\\Sikon_PJT\\Sikon\\src\\main\\webapp\\resources\\images\\uploadFiles\\";

		for (int i = 0; i < fileArray.length; i++) {

			if (!fileArray[i].getOriginalFilename().isEmpty()) {
				fileArray[i].transferTo(new File(FILE_SERVER_PATH, fileArray[i].getOriginalFilename()));
			}
			newFileName += fileArray[i].getOriginalFilename();

		}

		recipe.setRecipeImg(newFileName);

		// 동적테이블로부터 넘어온 재료명, 재료양 처리
		List<Ingredient> list = new ArrayList<Ingredient>();
		for (int i = 0; i < ingredientName.length; i++) {
			Ingredient ingredient = new Ingredient();
			ingredient.setIngredientNo(ingredientNo[i]);
			ingredient.setIngredientName(ingredientName[i]);
			ingredient.setIngredientAmount(ingredientAmount[i]);
			ingredient.setRecipeNo(recipe.getRecipeNo());
			list.add(ingredient);
		}

		Map map = new HashMap();
		map.put("list", list);

		// 레시피 수정
		recipeService.updateRecipe(recipe, map);

		model.addAttribute("recipe", recipe);
		model.addAttribute("list", list);

		return "forward:/recipe/getRecipe.jsp";
	}

	@RequestMapping(value = "listRecipe")
	public String listRecipe(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/recipe/listRecipe :  POST/get");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		if (search.getSearchCondition() == null) {
			search.setSearchCondition("0");
		}

		if (search.getThemeCondition() == "all") {
			search.setThemeCondition(null);
		}

		search.setPageSize(pageSize);

		Map<String, Object> map = recipeService.getRecipeList(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/recipe/listRecipe.jsp";
	}

	// Admin 관리 페이지
	@RequestMapping(value = "manageRecipe")
	public String manageRecipe(@ModelAttribute("search") Search search, Model model) throws Exception {

		System.out.println("/recipe/listRecipe :  POST/get");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		if (search.getSearchCondition() == null) {
			search.setSearchCondition("0");
		}

		if (search.getOrderCondition() == null) {
			search.setOrderCondition("0");
		}

		if (search.getThemeCondition() == "all") {
			search.setThemeCondition(null);
		}

		search.setPageSize(pageSize);

		Map<String, Object> map = recipeService.getRecipeList(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/recipe/manageRecipe.jsp";
	}

	// 내가 쓴 레시피(마이페이지)
	@RequestMapping(value = "listMyRecipe")
	public ModelAndView listMyRecipe(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/recipe/listMyRecipe :  POST/get");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		Map<String, Object> map = recipeService.getMyRecipeList(search, user.getUserNickname());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", map.get("list"));
		modelAndView.addObject("resultPage", resultPage);
		modelAndView.addObject("search", search);
		modelAndView.setViewName("forward:/mypage/listMyRecipe.jsp");

		return modelAndView;
	}

	// 레시피 선택 삭제
	@RequestMapping(value = "deleteRecipe")
	public String deleteRecipe(@RequestParam("recipeList") int[] recipeList, @RequestParam("menu") String menu)
			throws Exception {

		System.out.println("/recipe/deleteRecipe : POST");

		for (int i = 0; i < recipeList.length; i++) {
			recipeService.deleteRecipe(recipeList[i]);
		}

		if (menu.equals("search")) {
			return "redirect:/recipe/listMyRecipe";
		} else {
			return "redirect:/recipe/manageRecipe";
		}
	}

}