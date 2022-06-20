package com.sikon.service.notice;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Coupon;
import com.sikon.service.domain.Notice;


public interface NoticeDao{
	
	//공지사항 등록
	public void insertNotice(Notice notice) throws Exception;
	
	//공지사항 조회
	public Notice findNotice(int noticeNo) throws Exception;
	
	//공지사항 리스트
	public List<Coupon> getNoticeList(Search search) throws Exception;
	
	//공지사항 개수
	public int getNoticeTotalCount(Search search) throws Exception;

	//공지사항 수정
	public void updateNotice(Notice notice) throws Exception;
		
	//공지사항 삭제
	public void deleteNotice(int noticeNo) throws Exception;
}