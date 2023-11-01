package com.entity;

public class BookOrder {
	private int id;
	private String orderId;	
	private String userName;
	private String email;
	private String phoneNumber;
	private String fullAddress;
	private String bookName;
	private String author;
	private String price;
	private String paymentMode;
	
	public BookOrder() {
	}

	

	



	public BookOrder(int id, String orderId, String userName, String email, String phoneNumber, String fullAddress,
			String bookName, String author, String price, String paymentMode) {
		super();
		this.id = id;
		this.orderId = orderId;
		this.userName = userName;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.fullAddress = fullAddress;
		this.bookName = bookName;
		this.author = author;
		this.price = price;
		this.paymentMode = paymentMode;
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



	public String getPrice() {
		return price;
	}



	public void setPrice(String price) {
		this.price = price;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public String getOrderId() {
		return orderId;
	}
	
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getFullAddress() {
		return fullAddress;
	}

	public void setFullAddress(String fullAddress) {
		this.fullAddress = fullAddress;
	}

	public String getPaymentMode() {
		return paymentMode;
	}

	public void setPaymentMode(String paymentMode) {
		this.paymentMode = paymentMode;
	}

	@Override
	public String toString() {
		return "BookOrder [id=" + id + ", orderId=" + orderId + ", userName=" + userName + ", email=" + email
				+ ", phoneNumber=" + phoneNumber + ", fullAddress=" + fullAddress + ", bookName=" + bookName
				+ ", author=" + author + ", price=" + price + ", paymentMode=" + paymentMode + "]";
	}

	
	
}
