package com.amdocs.training.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.amdocs.training.dao.ContactDAO;
import com.amdocs.training.db.DBUtil;
import com.amdocs.training.model.Contact;

public class ContactDAOImpl implements ContactDAO {

	Connection conn = DBUtil.getConnection();

	@Override
	public boolean saveContact(Contact contact) {
		String query = "insert into contact values(?,?,?,?,?,?)";
		try {
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setInt(1, contact.getUserId());
			ps.setString(2, contact.getName());
			ps.setString(3, contact.getEmail());
			ps.setLong(4, contact.getPhone());
			ps.setString(5, contact.getMessage());
			ps.setInt(6, contact.getContactId());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}
}