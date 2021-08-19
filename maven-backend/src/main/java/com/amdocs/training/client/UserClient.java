package com.amdocs.training.client;

import com.amdocs.training.dao.UserDAO;
import com.amdocs.training.dao.impl.UserDAOImpl;
import com.amdocs.training.model.User;

public class UserClient {

	public static void main(String[] args) {
		
		UserDAO dao = new UserDAOImpl();
		
		User user = new User(202, "Admin", 7689098765L, "admin@amdocs.com", "Lucknow", "2020-12-17", "admin@123", "admin.jpg");
		dao.saveUser(user);
		
		System.out.println("User Added Successfully");
	}

}