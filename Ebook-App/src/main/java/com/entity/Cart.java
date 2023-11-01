package com.entity;

public class Cart {
	private int cId;
	private int bId;
	private int userId;
	private String bookName;
	private String author;
	private Double price;
	private Double totalPrice;
	
	public Cart() {
	}

	public Cart(int cId, int bId, int userId, String bookName, String author, Double price, Double totalPrice) {
		super();
		this.cId = cId;
		this.bId = bId;
		this.userId = userId;
		this.bookName = bookName;
		this.author = author;
		this.price = price;
		this.totalPrice = totalPrice;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public int getbId() {
		return bId;
	}

	public void setbId(int bId) {
		this.bId = bId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Double totalPrice) {
		this.totalPrice = totalPrice;
	}
	
	

	
	
	
}
