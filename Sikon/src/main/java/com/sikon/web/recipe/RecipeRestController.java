package com.sikon.web.recipe;

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
import com.sikon.service.bookmark.BookmarkService;
import com.sikon.service.domain.Recipe;
import com.sikon.service.recipe.RecipeService;

//레시피 RestController
@RestController
@RequestMapping("/recipe/*")
public class RecipeRestController {

	/// Field

	@Autowired
	@Qualifier("recipeServiceImpl")
	private RecipeService recipeService;
	
	@Autowired
	@Qualifier("bookmarkServiceImpl")
	private BookmarkService bookmarkService;

	@Value("#{commonProperties['pageUnit']}")
	int pageUnit;
	@Value("#{commonProperties['pageSize']}")
	int pageSize;
	@Value("#{commonProperties['summerNote']}")
	String summerNote;

	public RecipeRestController() {
		System.out.println(this.getClass());
	}

	// 무한스크롤
	@RequestMapping(value = "json/listRecipe")
	public Map listRecipe(@RequestBody Search search) throws Exception {

		System.out.println("/recipe/json/listRecipe : POST");
		System.out.println("search"+search);

		if (search.getCurrentPage() == 0) {
			search.setCurrentPage(1);
		}

		if (search.getSearchCondition() == null) {
			search.setSearchCondition("0");
		}

		if (search.getThemeCondition() == "all") {
			search.setThemeCondition(null);
		}

		System.out.println("orderCondition=" + search.getOrderCondition());

		search.setPageSize(pageSize);

		Map<String, Object> map = recipeService.getRecipeList(search);

		Page resultPage = new Page(search.getCurrentPage(), ((Integer) map.get("totalCount")).intValue(), pageUnit,
				pageSize);
		System.out.println(resultPage);

		Map map2 = new HashMap();
		map2.put("list", map.get("list"));
		map2.put("resultPage", map);
		map2.put("search", search);

//		System.out.println("map=" + map);
		return map2;
	}

	@RequestMapping(value = "json/uploadSummernoteImageFile")
	public Map uploadSummernoteImageFile(@RequestParam("file") MultipartFile multipartFile) {

		System.out.println("썸머노트 json/imageUpload");

		Map map = new HashMap();

		String fileRoot = summerNote;	//저장될 파일 경로
		String originalFileName = multipartFile.getOriginalFilename(); // 오리지날 파일명
		String extension = originalFileName.substring(originalFileName.lastIndexOf(".")); // 파일 확장자

		// 랜덤 UUID+확장자로 저장될 savedFileName
		String savedFileName = UUID.randomUUID() + extension;

		System.out.println("2: " + savedFileName);

		File targetFile = new File(fileRoot + savedFileName);

		System.out.println("3: " + targetFile);

		try {
			InputStream fileStream = multipartFile.getInputStream();
			FileUtils.copyInputStreamToFile(fileStream, targetFile); // 파일 저장
			map.put("url", "/summernoteImage/" + savedFileName);
			map.put("responseCode", "success");

		} catch (IOException e) {
			FileUtils.deleteQuietly(targetFile); // 실패시 저장된 파일 삭제
			map.put("responseCode", "error");
			e.printStackTrace();
		}

		System.out.println("4: " + map);

		return map;
	}

	// 좋아요 push 알림
	@RequestMapping(value = "/json/pushAlarm", method = RequestMethod.POST)
	@ResponseBody
	public Map pushAlram(@RequestParam("recipeNo") int recipeNo, @RequestParam("userId") String userId,
			@RequestParam("userNickname") String userNickname) {

		Map map = new HashMap();

		try {
			Recipe recipe = recipeService.getRecipeName(recipeNo);

			map.put("userId", userId);
			map.put("userNickname", userNickname);
			map.put("recipeName", recipe.getRecipeName());
			map.put("writerId", recipe.getWriter().getUserId());
			map.put("responseCode", "success");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return map;
	}

	@RequestMapping(value = "json/updateBookmark", method = RequestMethod.POST)
	public int updateHeart(@RequestParam("recipeNo") int recipeNo, @RequestParam("userId") String userId)
			throws Exception {

		System.out.println("/recipe/json/updateBookmark");

		System.out.println(recipeNo);
		System.out.println(userId);
		
		int bookmarkStatus = bookmarkService.checkDuplicate(recipeNo, userId);
		System.out.println(bookmarkStatus);
		
		if (bookmarkStatus == 0) {
			bookmarkService.addBookmark(recipeNo, userId); 
			bookmarkService.checkDuplicate(recipeNo, userId);
		} else {

			bookmarkService.deleteBookmark(recipeNo, userId); // 좋아요 삭제
			bookmarkService.checkDuplicate(recipeNo, userId);

		}

		return bookmarkStatus;

	}

}