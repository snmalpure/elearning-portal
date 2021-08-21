package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.AdminDAO;
import com.amdocs.training.dao.impl.AdminDAOImpl;
import com.amdocs.training.model.Admin;

@WebServlet("/admin")
public class AdminController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int adminId = Integer.parseInt(req.getParameter("adminId"));
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		
		Admin admin = new Admin(adminId, name, password, email);
		
		AdminDAO dao = new AdminDAOImpl();
		
		boolean saveAdmin = dao.saveAdmin(admin);
		
		PrintWriter out = resp.getWriter();
		
		if(saveAdmin) {
			out.println("Admin Saved Successfully!");
		}
		else {
			out.println("try again");
		}
		
	}
}
