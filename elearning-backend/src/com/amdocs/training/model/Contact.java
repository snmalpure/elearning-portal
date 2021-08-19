package com.amdocs.training.model;

public class Contact
{
	private int userId;
	private String name;
	private long phone;
	private String email;
	private String message;
	private int contactId;
	
	public Contact() {}
	
	public Contact(int userId, String name, String email, long phone, String message, int contactId)
	{
		this.userId = userId;
		this.name = name;
		this.message = message;
		this.email = email;
		this.contactId = contactId;
		this.phone = phone;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getContactId() {
		return contactId;
	}

	public void setContactId(int contactId) {
		this.contactId = contactId;
	}
}
