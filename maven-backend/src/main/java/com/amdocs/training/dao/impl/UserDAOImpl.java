package com.amdocs.training.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amdocs.training.dao.UserDAO;
import com.amdocs.training.db.DBUtil;
import com.amdocs.training.model.User;

public class UserDAOImpl implements UserDAO {

	Connection conn = DBUtil.getConnection();
	
	public boolean saveUser(User user) {
		
		String query = "insert into user values(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, user.getId());
			ps.setString(2, user.getUsername());
			ps.setLong(3, user.getPhone());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getAddress());
			ps.setString(6, user.getDate());
			ps.setString(7, user.getPassword());
			ps.setString(8, user.getPhoto());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}

}