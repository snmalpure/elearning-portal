package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.UserDAO;
import com.amdocs.training.dao.impl.UserDAOImpl;
import com.amdocs.training.model.User;

@WebServlet("/register")
public class UserController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int id = Integer.parseInt(req.getParameter("id"));
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String email = req.getParameter("email");
		String address = req.getParameter("address");
		String photo = req.getParameter("photo");
		String date = req.getParameter("date");
		long phone = Long.parseLong(req.getParameter("phone"));
		
		User user = new User(id, username, phone, email, address, date, password, photo);
		
		UserDAO dao = new UserDAOImpl();
		
		boolean saveUser = dao.saveUser(user);
		
		PrintWriter out = resp.getWriter();
		
		if(saveUser) {
			out.println("User Saved Successfully!");
		}
		else {
			out.println("try again");
		}
		
	}
}
