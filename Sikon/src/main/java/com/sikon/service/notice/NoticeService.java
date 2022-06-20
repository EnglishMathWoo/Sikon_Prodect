package com.sikon.service.notice;

import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Notice;

public interface NoticeService {
	
	//공지사항 등록
	public void addNotice(Notice notice) throws Exception;
	
	//공지사항 조회
	public Notice getNotice(int noticeNo) throws Exception;
	
	//공지사항 리스트
	public Map<String , Object > getNoticeList(Search search) throws Exception;
	
	//공지사항 수정
	public void updateNotice(Notice notice) throws Exception;
		
	//공지사항 삭제
	public void deleteNotice(int noticeNo) throws Exception;;
	
}