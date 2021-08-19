package com.amdocs.training.client;

import com.amdocs.training.dao.AdminDAO;
import com.amdocs.training.dao.impl.AdminDAOImpl;
import com.amdocs.training.model.Admin;

public class AdminClient
{
	public static void main(String args[])
	{
		AdminDAO dao = new AdminDAOImpl();
		
		Admin admin = new Admin(6, "Temp", "temp@gmail.com", "tempadmin1");
		dao.saveAdmin(admin);
		System.out.println("saved successfully");
	}
}
