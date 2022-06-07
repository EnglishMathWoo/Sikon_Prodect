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
	public ModelAndView addBookmark(@ModelAttribute("bookmark") Bookmark bookmark,
			@ModelAttribute("recipe") Recipe recipe, HttpServletRequest request) throws Exception {

		System.out.println("/bookmark/addBookmark : POST");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		System.out.println(user);

		
		bookmark.setRecipe(recipe);
		bookmark.setUserId(user.getUserId());

		bookmarkService.addBookmark(bookmark);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("forward:/recipe/getRecipe?recipeNo=" + recipe.getRecipeNo());

		return modelAndView;
	}

	@RequestMapping(value = "listBookmark")
	public String listBookmark(@ModelAttribute("search") Search search, Model model, HttpServletRequest request)
			throws Exception {

		System.out.println("/bookmark/listBookmark :  POST/get");
		System.out.println("search:" + search);
		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		search.setPageSize(pageSize);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");

		// Business logic 수행
		Map<String, Object> map = bookmarkService.getBookmarkList(search, user.getUserId());


		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println(resultPage);
		System.out.println(map);

		System.out.println(map.get("list"));
		// Model 과 View 연결
		model.addAttribute("list", map.get("list"));
		model.addAttribute("resultPage", resultPage);
		System.out.println("resultPage는" + resultPage);
		model.addAttribute("search", search);

		return "forward:/bookmark/listBookmark.jsp";
	}

	@RequestMapping(value = "deleteBookmark")
	public String deleteBookmark(@RequestParam("bookmarkList") int[] bookmarkList) throws Exception {

		System.out.println("/bookmark/deleteBookmark : POST");
		System.out.println(bookmarkList.length);

		for (int i = 0; i < bookmarkList.length; i++) {
			System.out.println(bookmarkList[i]);
		}

		for (int i = 0; i < bookmarkList.length; i++) {
			bookmarkService.deleteBookmark(bookmarkList[i]);
		}

		return "redirect:/bookmark/listBookmark";
	}

//	@RequestMapping(value="delCheckBookmark",method=RequestMethod.POST )
//	public String delCheckBookmark(@RequestParam("bno[]") List<Integer> bno) throws Exception {
//
//		System.out.println("/bookmark/delCheckBookmark : POST");
//		
//		
//
//		    for(int str : bno){
//		    	bookmarkService.deleteBookmark(str);
//		    }
//		    
//			return "redirect:/bookmark/listBookmark";
//		
//		
//	}	

}