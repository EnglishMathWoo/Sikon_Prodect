package com.sikon.service.domain;

import java.util.Date;

public class Review {
	private int reviewNo;
	private String reviewCategory;
	private String writerNickname;
	private String reviewContent;
	private String reviewImg;
	private Date reviewRegdate;
	private Recipe recipe;
	private Product product;
	private Cook cook;
	private String status;
	
	
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	
	public String getReviewCategory() {
		return reviewCategory;
	}
	public void setReviewCategory(String reviewCategory) {
		this.reviewCategory = reviewCategory;
	}
	public String getWriterNickname() {
		return writerNickname;
	}
	public void setWriterNickname(String writerNickname) {
		this.writerNickname = writerNickname;
	}
	public String getReviewContent() {
		return reviewContent;
	}
	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}
	public Date getReviewRegdate() {
		return reviewRegdate;
	}
	public void setReviewRegdate(Date reviewRegdate) {
		this.reviewRegdate = reviewRegdate;
	}
	public String getReviewImg() {
		return reviewImg;
	}
	public void setReviewImg(String reviewImg) {
		this.reviewImg = reviewImg;
	}
	public Recipe getRecipe() {
		return recipe;
	}
	public void setRecipe(Recipe recipe) {
		this.recipe = recipe;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Cook getCook() {
		return cook;
	}
	public void setCook(Cook cook) {
		this.cook = cook;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	@Override
	public String toString() {
		return "Review [reviewNo=" + reviewNo + ", reviewCategory=" + reviewCategory + ", writerNickname=" + writerNickname
				+ ", reviewContent=" + reviewContent + ", reviewRegdate=" + reviewRegdate + ", reviewImg=" + reviewImg
				+ ", recipe=" + recipe + ", product=" + product + ", cook=" + cook + ", status=" + status + "]";
	}


}
