package com.sikon.service.bookmark.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.sikon.common.Search;
import com.sikon.service.bookmark.BookmarkDao;
import com.sikon.service.bookmark.BookmarkService;
import com.sikon.service.domain.Bookmark;;

//책갈피 서비스 구현
@Service("bookmarkServiceImpl")
public class BookmarkServiceImpl implements BookmarkService {

	/// Field
	@Autowired
	@Qualifier("bookmarkDaoImpl")
	private BookmarkDao bookmarkDao;

	public void setBookmarkDao(BookmarkDao bookmarkDao) {
		this.bookmarkDao = bookmarkDao;
	}

	/// Constructor
	public BookmarkServiceImpl() {
		System.out.println(this.getClass());
	}

	/// Method
	public void addBookmark(int recipeNo, String userId) throws Exception {

		bookmarkDao.addBookmark(recipeNo, userId);
	}

	public Map<String, Object> getBookmarkList(Search search, String userId) throws Exception {

		List<Bookmark> list = bookmarkDao.getBookmarkList(search, userId);
		int totalCount = bookmarkDao.getTotalCount(search, userId);

		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", list);
		map.put("totalCount", new Integer(totalCount));

		return map;
	}

	public void deleteBookmark(int recipeNo, String userId) throws Exception {

		bookmarkDao.deleteBookmark(recipeNo, userId);

	}

	public int checkDuplicate(int recipeNo, String userId) throws Exception {
		return bookmarkDao.checkDuplicate(recipeNo, userId);
	}

}