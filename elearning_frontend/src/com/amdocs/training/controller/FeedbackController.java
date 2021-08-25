package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.FeedbackDAO;
import com.amdocs.training.dao.impl.FeedbackDAOImpl;
import com.amdocs.training.model.Feedback;

@WebServlet("/feedback")
public class FeedbackController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int userId = Integer.parseInt(req.getParameter("userId"));
		String name = req.getParameter("name");
		String feedback =req.getParameter("feedback");
		String email = req.getParameter("email");
		int fid = Integer.parseInt(req.getParameter("fid"));
		
		Feedback fb = new Feedback(userId, name, email, fid, feedback);
		
		FeedbackDAO dao = new FeedbackDAOImpl();
		
		boolean saveFeedback = dao.saveFeedback(fb);
		
		PrintWriter out = resp.getWriter();
		
		if(saveFeedback) {
			//out.println("Feedback Saved Successfully!");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Feedback sent successfully!');");
			out.println("location='userview.jsp';");
			out.println("</script>");
		}
		else {
			//out.println("try again");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Could not send feedback! Please try again.');");
			out.println("location='feedback.jsp';");
			out.println("</script>");
		}
		
	}
}
