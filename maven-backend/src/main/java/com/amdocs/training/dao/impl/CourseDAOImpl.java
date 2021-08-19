package com.amdocs.training.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amdocs.training.dao.CourseDAO;
import com.amdocs.training.db.DBUtil;
import com.amdocs.training.model.Course;

public class CourseDAOImpl implements CourseDAO {

	Connection conn = DBUtil.getConnection();

	public boolean saveCourse(Course course) {
		String query = "insert into course values(?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, course.getCourseId());
			ps.setString(2, course.getCourseName());
			ps.setString(3, course.getDescription());
			ps.setDouble(4, course.getCourseFee());
			ps.setString(5, course.getResources());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}