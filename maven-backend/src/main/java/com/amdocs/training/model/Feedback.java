package com.amdocs.training.model;

public class Feedback
{
	private int userId;
	private String name;
	private String feedback;
	private String email;
	private int fid;
	
	public Feedback() {}
	
	public Feedback(int userId, String name, String email, int fid, String feedback)
	{
		this.userId = userId;
		this.name = name;
		this.feedback = feedback;
		this.email = email;
		this.fid = fid;
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

	public String getFeedback() {
		return feedback;
	}

	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}
}
