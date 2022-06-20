package com.sikon.web.bookmark;

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
import org.springframework.web.servlet.ModelAndView;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.bookmark.BookmarkService;
import com.sikon.service.domain.Bookmark;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.User;
import com.sikon.service.recipe.RecipeService;

@Controller
@RequestMapping("/bookmark/*")
public class BookmarkController {

	/// Field
	@Autowired
	@Qualifier("bookmarkServiceImpl")
	private BookmarkService bookmarkService;

	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;

	public BookmarkController() {
		System.out.println("bookmark시작~");
	}

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	@RequestMapping(value = "addBookmark")
	public String addBookmark(@ModelAttribute("recipe") Recipe recipe,
			HttpServletRequest request) throws Exception {
		System.out.println("와말아");
		System.out.println("/bookmark/addBookmark : POST");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		System.out.println(user);


		bookmarkService.addBookmark(recipe.getRecipeNo(),user.getUserId());

		return "forward:/recipe/getRecipe?recipeNo=" + recipe.getRecipeNo();
	}

	@RequestMapping(value = "listBookmark")
	public String listBookmark(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/bookmark/listBookmark :  POST/get");
		System.out.println("search:" + search);
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		if (search.getOrderCondition() == null) {
			search.setOrderCondition("0");
		}
		
		if(search.getSearchCondition()==null) {
			search.setSearchCondition("0");
		}
		search.setPageSize(pageSize);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		// Business logic 수행
		Map<String, Object> map = bookmarkService.getBookmarkList(search, user.getUserId());

		
		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println("resultPage=" + resultPage);

		System.out.println("list" + map.get("list"));

		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/mypage/listBookmark.jsp";
	}

	
	// 책갈피 선택 삭제
	@RequestMapping(value = "deleteBookmark")
	public String deleteBookmarkArray(@RequestParam("recipeList") int[] recipeList,HttpServletRequest request) throws Exception {

		System.out.println("/bookmark/deleteBookmarkArray : POST");

		for (int i = 0; i < recipeList.length; i++) {
			System.out.println(recipeList[i]);
		}

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		
		for (int i = 0; i < recipeList.length; i++) {
			bookmarkService.deleteBookmark(recipeList[i],user.getUserId());
		}

		return "redirect:/bookmark/listBookmark";
	}

}