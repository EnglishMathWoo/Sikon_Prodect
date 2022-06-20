package com.sikon.service.notice.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.sikon.common.Search;
import com.sikon.service.domain.Coupon;
import com.sikon.service.domain.Notice;
import com.sikon.service.notice.NoticeDao;



@Repository("noticeDaoImpl")
public class NoticeDaoImpl implements NoticeDao {

	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;

	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	///Constructor
	public NoticeDaoImpl() {
		System.out.println(this.getClass());
	}

	
	/// Method
	//공지사항 등록
	public void insertNotice(Notice notice) throws Exception {
		
		sqlSession.insert("NoticeMapper.addNotice", notice);
	}
	
	//공지사항 조회
	public Notice findNotice(int noticeNo) throws Exception {
		
		return sqlSession.selectOne("NoticeMapper.findNotice", noticeNo);
	}
	
	//공지사항 리스트
	public List<Coupon> getNoticeList(Search search) throws Exception {
		
		return sqlSession.selectList("NoticeMapper.getNoticeList", search);
	}
	
	//공지사항 개수
	public int getNoticeTotalCount(Search search) throws Exception {
		
		return sqlSession.selectOne("NoticeMapper.getTotalCount", search);
	}
	
	//공지사항 수정
	public void updateNotice(Notice notice) throws Exception {
		
		sqlSession.update("NoticeMapper.updateNotice", notice);
	}
	
	//공지사항 삭제
	public void deleteNotice(int noticeNo) throws Exception{
		
		sqlSession.delete("NoticeMapper.deleteNotice", noticeNo);
	}

}