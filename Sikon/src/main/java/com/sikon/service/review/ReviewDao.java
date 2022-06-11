package com.sikon.service.review;

import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Review;

//¸®ºä¿¡¼­ CRUD Ãß»óÈ­/Ä¸½¶È­ÇÑ DAO Interface Definition
public interface ReviewDao {

	// INSERT
	public void addReview(Review review) throws Exception;

	//SELECT LIST
	public List<Review> getReviewList(Search search,String category, int textNo) throws Exception;
	public List<Review> getMyReviewList(Search search, String writerNickname) throws Exception;
	public Review getReview(int reviewNo) throws Exception;

	//UPDATE
	public void updateReview(Review review) throws Exception;

	public void givePoint(int point,String userId) throws Exception;

	//DELETE
	public void deleteReview(int reviewNo) throws Exception;
	
	public void updateStatus(int textNo, String category) throws Exception;
	
	//SELECT ROW Count
	public int getTotalCount(Search search,String category,int textNo) throws Exception ;
	
	public int getTotalMyCount(Search search, String writerNickname) throws Exception;


}