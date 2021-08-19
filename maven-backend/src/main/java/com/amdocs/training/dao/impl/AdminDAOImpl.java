package com.amdocs.training.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amdocs.training.dao.AdminDAO;
import com.amdocs.training.db.DBUtil;
import com.amdocs.training.model.Admin;

public class AdminDAOImpl implements AdminDAO {

	Connection conn = DBUtil.getConnection();

	public boolean saveAdmin(Admin admin) {
		String query = "insert into admin values(?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, admin.getAdminId());
			ps.setString(2, admin.getName());
			ps.setString(3, admin.getEmail());
			ps.setString(4, admin.getPassword());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}