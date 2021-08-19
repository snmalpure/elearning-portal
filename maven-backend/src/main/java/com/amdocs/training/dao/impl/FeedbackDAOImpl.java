package com.amdocs.training.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amdocs.training.dao.FeedbackDAO;
import com.amdocs.training.db.DBUtil;
import com.amdocs.training.model.Feedback;

public class FeedbackDAOImpl implements FeedbackDAO {

	Connection conn = DBUtil.getConnection();

	public boolean saveFeedback(Feedback feedback) {
		String query = "insert into feedback values(?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, feedback.getUserId());
			ps.setString(2, feedback.getName());
			ps.setString(3, feedback.getEmail());
			ps.setInt(4, feedback.getFid());
			ps.setString(5, feedback.getFeedback());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}