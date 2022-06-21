package com.sikon.service.domain;

import java.sql.Date;

public class Apply {
	//레쓰고

	private int applyNo;
	private Cook classCook; //cook 객체
	private User applier; 	//user 객체
	private String paymentOption;
	private String applyStatus; 
	private int cookStatus;		//cookStock(재고)-cookStatus(신청인원)
	private Date checkDate;
	private String receiverPhone;
	private String reviewStatus;
	private int total;
	
	public Apply() {
	
	}

	public int getApplyNo() {
		return applyNo;
	}

	public void setApplyNo(int applyNo) {
		this.applyNo = applyNo;
	}

	public Cook getClassCook() {
		return classCook;
	}

	public void setClassCook(Cook classCook) {
		this.classCook = classCook;
	}

	public User getApplier() {
		return applier;
	}

	public void setApplier(User applier) {
		this.applier = applier;
	}

	public String getPaymentOption() {
		return paymentOption;
	}

	public void setPaymentOption(String paymentOption) {
		this.paymentOption = paymentOption;
	}

	public String getApplyStatus() {
		return applyStatus;
	}

	public void setApplyStatus(String applyStatus) {
		this.applyStatus = applyStatus;
	}

	public int getCookStatus() {
		return cookStatus;
	}

	public void setCookStatus(int cookStatus) {
		this.cookStatus = cookStatus;
	}

	public Date getCheckDate() {
		return checkDate;
	}

	public void setCheckDate(Date checkDate) {
		this.checkDate = checkDate;
	}

	public String getReceiverPhone() {
		return receiverPhone;
	}

	public void setReceiverPhone(String receiverPhone) {
		this.receiverPhone = receiverPhone;
	}

	public String getReviewStatus() {
		return reviewStatus;
	}

	public void setReviewStatus(String reviewStatus) {
		this.reviewStatus = reviewStatus;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "Apply [applyNo=" + applyNo + ", classCook=" + classCook + ", applier=" + applier + ", paymentOption="
				+ paymentOption + ", applyStatus=" + applyStatus + ", cookStatus=" + cookStatus + ", checkDate="
				+ checkDate + ", receiverPhone=" + receiverPhone + ", reviewStatus=" + reviewStatus + ", total=" + total
				+ "]";
	}




}
