package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.CourseDAO;
import com.amdocs.training.dao.impl.CourseDAOImpl;
import com.amdocs.training.model.Course;

@WebServlet("/course")
public class CourseController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int courseId = Integer.parseInt(req.getParameter("courseId"));
		String courseName = req.getParameter("courseName");
		String description =req.getParameter("description");
		double courseFee = Double.parseDouble(req.getParameter("courseFee"));
		String resources = req.getParameter("resources");
		
		Course course = new Course(courseId, courseName, description, courseFee, resources);
		
		CourseDAO dao = new CourseDAOImpl();
		
		boolean saveCourse = dao.saveCourse(course);
		
		PrintWriter out = resp.getWriter();
		
		if(saveCourse) {
			//out.println("Course Saved Successfully!");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Course added successfully!');");
			out.println("location='admin.jsp';");
			out.println("</script>");
		}
		else {
			//out.println("try again");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Course addition failed! Please try again.');");
			out.println("location='course.jsp';");
			out.println("</script>");
		}
		
	}
}
