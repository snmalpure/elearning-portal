package com.amdocs.training.client;

import com.amdocs.training.dao.UserDAO;
import com.amdocs.training.dao.impl.UserDAOImpl;
import com.amdocs.training.model.User;

public class UserClient {

	public static void main(String[] args) {
		
		UserDAO dao = new UserDAOImpl();
		
		User user = new User(203, "Admin2", 9862398765L, "admin2@amdocs.com", "Kanpur", "2021-04-11", "admin2@123", "admin2.jpg");
		dao.saveUser(user);
		
		System.out.println("User Added Successfully");
	}

}