package com.sikon.service.review;

import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Review;

//리뷰에서 서비스할 내용 추상화/캡슐화한 Service  Interface Definition  
public interface ReviewService {

	// 리뷰 등록
	public void addReview(Review review) throws Exception;

	// 리뷰 단일 조회
	public Review getReview(int reviewNo) throws Exception;

	// 리뷰 리스트 조회
	public Map<String, Object> getReviewList(Search search, String category, int textNo) throws Exception;

	public Map<String, Object> getMyReviewList(Search search, String writerNickname) throws Exception;

	// 리뷰 수정
	public void updateReview(Review review) throws Exception;

	// 리뷰 삭제
	public void deleteReview(int reviewNo) throws Exception;

	// 리뷰작성시 구매상품, 구매 쿠킹클래스의 리뷰상태 변경
	public void updateStatus(int textNo, String category) throws Exception;

	// 레시피 리뷰 등록시 리뷰수 +1, 삭제시 리뷰수 -1
	public void updateReviewNum(int count, int recipeNo) throws Exception;

	// 리뷰 수 표기
	public int countReviewNum(int textNo, String category) throws Exception;

}
