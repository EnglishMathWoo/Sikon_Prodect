package com.sikon.service.love;

import java.util.List;
import java.util.Map;

import com.sikon.common.Search;
import com.sikon.service.domain.Love;

//책갈피에서 서비스할 내용 추상화/캡슐화한 Service  Interface Definition  
public interface LoveService {

	//책갈피 등록
	public void addLove(Love Love) throws Exception;

	//책갈피 리스트 조회
	public Map<String, Object> getLoveList(Search search,String userId) throws Exception;

	//책갈피 삭제
	public void deleteLove(int LoveNo) throws Exception;

}
