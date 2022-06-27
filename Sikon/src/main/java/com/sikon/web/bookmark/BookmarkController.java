package com.sikon.web.bookmark;

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
import org.springframework.web.bind.annotation.RequestParam;

import com.sikon.common.Page;
import com.sikon.common.Search;
import com.sikon.service.bookmark.BookmarkService;
import com.sikon.service.domain.Recipe;
import com.sikon.service.domain.User;

	// 책갈피 Controller
	@Controller
	@RequestMapping("/bookmark/*")
	public class BookmarkController {

	/// Field
	@Autowired
	@Qualifier("bookmarkServiceImpl")
	private BookmarkService bookmarkService;

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;

	@Value("#{commonProperties['pageSize']}")
	int pageSize;

	public BookmarkController() {
		System.out.println(this.getClass());
	}

	/// Method
	@RequestMapping(value = "addBookmark")
	public String addBookmark(@ModelAttribute("recipe") Recipe recipe, HttpServletRequest request) throws Exception {

		System.out.println("/bookmark/addBookmark : POST");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		bookmarkService.addBookmark(recipe.getRecipeNo(), user.getUserId());

		return "forward:/recipe/getRecipe?recipeNo=" + recipe.getRecipeNo();
	}

	@RequestMapping(value = "listBookmark")
	public String listBookmark(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/bookmark/listBookmark :  POST/get");

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		Map<String, Object> map = bookmarkService.getBookmarkList(search, user.getUserId());

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);

		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		model.addAttribute("search", search);

		return "forward:/mypage/listBookmark.jsp";
	}

	// 책갈피 선택 삭제
	@RequestMapping(value = "deleteBookmark")
	public String deleteBookmarkArray(@RequestParam("recipeList") int[] recipeList, HttpServletRequest request)
			throws Exception {

		System.out.println("/bookmark/deleteBookmarkArray : POST");

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		for (int i = 0; i < recipeList.length; i++) {
			bookmarkService.deleteBookmark(recipeList[i], user.getUserId());
		}

		return "redirect:/bookmark/listBookmark";
	}

}