package com.amdocs.training.model;

import java.sql.Date;

public class User
{
	private int id;
	private String username;
	private String password;
	private String address;
	private String photo;
	private String date;
	private long phone;
	private String email;

	public User() {
	}

	public User(int id, String username, long phone, String email, String address, String date, String password, String photo) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.address = address;
		this.phone = phone;
		this.email = email;
		this.photo = photo;
		this.date = date ;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
