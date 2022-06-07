package com.sikon.service.domain;


public class Cart {
	
	private int cartNo;
	private String userId;
	private int prodNo;
	private int quantity;
	private String prodName;
	private String fileName;
	private int price;	
	


	public Cart(){
	}

	



	public int getCartNo() {
		return cartNo;
	}





	public void setCartNo(int cartNo) {
		this.cartNo = cartNo;
	}





	public String getUserId() {
		return userId;
	}





	public void setUserId(String userId) {
		this.userId = userId;
	}





	public int getProdNo() {
		return prodNo;
	}





	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}





	public int getQuantity() {
		return quantity;
	}





	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}





	public String getProdName() {
		return prodName;
	}





	public void setProdName(String prodName) {
		this.prodName = prodName;
	}





	public String getFileName() {
		return fileName;
	}





	public void setFileName(String fileName) {
		this.fileName = fileName;
	}





	public int getPrice() {
		return price;
	}





	public void setPrice(int price) {
		this.price = price;
	}





	@Override
	public String toString() {
		return "Cart [cartNo=" + cartNo + ", userId=" + userId + ", prodNo=" + prodNo + ", quantity=" + quantity
				+ ", prodName=" + prodName + ", fileName=" + fileName + ", price=" + price + "]";
	}





}