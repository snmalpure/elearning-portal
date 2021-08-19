package com.amdocs.training.client;

import com.amdocs.training.dao.FeedbackDAO;
import com.amdocs.training.dao.impl.FeedbackDAOImpl;
import com.amdocs.training.model.Feedback;

public class FeedbackClient
{
	public static void main(String args[])
	{
		FeedbackDAO dao = new FeedbackDAOImpl();
		
		Feedback feedback = new Feedback(107, "Rahul", "rahul@gmail.com", 3, "very good");
		dao.saveFeedback(feedback);
		System.out.println("saved successfully");
	}
}
