package com.sikon.service.domain;

import java.util.Date;

import com.sikon.common.Search;

public class Ranking {
	private int rankingNo;
	private Recipe rankingRecipe;
	private Cook rankingCook;
	private Search rankingSearch;
	private Date viewDate;
	private Date heartDate;
	private Date searchDate;

	
	public int getRankingNo() {
		return rankingNo;
	}


	public void setRankingNo(int rankingNo) {
		this.rankingNo = rankingNo;
	}


	public Recipe getRankingRecipe() {
		return rankingRecipe;
	}


	public void setRankingRecipe(Recipe rankingRecipe) {
		this.rankingRecipe = rankingRecipe;
	}


	public Cook getRankingCook() {
		return rankingCook;
	}


	public void setRankingCook(Cook rankingCook) {
		this.rankingCook = rankingCook;
	}


	public Search getRankingSearch() {
		return rankingSearch;
	}


	public void setRankingSearch(Search rankingSearch) {
		this.rankingSearch = rankingSearch;
	}


	public Date getViewDate() {
		return viewDate;
	}


	public void setViewDate(Date viewDate) {
		this.viewDate = viewDate;
	}


	public Date getHeartDate() {
		return heartDate;
	}


	public void setHeartDate(Date heartDate) {
		this.heartDate = heartDate;
	}


	public Date getSearchDate() {
		return searchDate;
	}


	public void setSearchDate(Date searchDate) {
		this.searchDate = searchDate;
	}


	@Override
	public String toString() {
		return "Ranking [rankingNo=" + rankingNo + ", rankingRecipe=" + rankingRecipe + ", rankingCook=" + rankingCook
				+ ", rankingSearch=" + rankingSearch + ", viewDate=" + viewDate + ", heartDate=" + heartDate
				+ ", searchDate=" + searchDate + "]";
	}


}
