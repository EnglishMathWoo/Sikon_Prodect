package com.sikon.service.apply;

import java.util.List;

import com.sikon.common.Search;
import com.sikon.service.domain.Apply;
import com.sikon.service.domain.Heart;
import com.sikon.service.domain.Wish;

public interface ApplyDao {

	public void addApply(Apply apply) throws Exception;

	public List<Apply> getApplyList(Search search,String applierId) throws Exception;

	public Apply getApply(int applyNo) throws Exception;

	//public List<Apply> getApply(Search search,String applierId) throws Exception;
	
	public void updateApplyStatus(Apply apply) throws Exception;
	
	public int getTotalCount(Search search,String applierId) throws Exception ;
	
	public void buyCook (int cookStatus, int applyNo ) throws Exception ;
	
	public void  cancel (int cookStatus, int applyNo ) throws Exception ;
	
	
	
	public List<Apply> getTotalSales(String applierId) throws Exception ;

}
