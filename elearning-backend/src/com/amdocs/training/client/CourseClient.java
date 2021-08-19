package com.amdocs.training.client;

import com.amdocs.training.dao.CourseDAO;
import com.amdocs.training.dao.impl.CourseDAOImpl;
import com.amdocs.training.model.Course;

public class CourseClient
{
	public static void main(String args[])
	{
		CourseDAO dao = new CourseDAOImpl();
		
		Course course = new Course(3001, "Design Patterns", "GOF and Sun Design Patterns", 3500, "video.mp4");
		dao.saveCourse(course );
		System.out.println("saved successfully");
	}
}
