package com.amdocs.training.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.amdocs.training.dao.ContactDAO;
import com.amdocs.training.dao.impl.ContactDAOImpl;
import com.amdocs.training.model.Contact;

@WebServlet("/contact")
public class ContactController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int userId = Integer.parseInt(req.getParameter("userId"));
		String name = req.getParameter("name");
		String email = req.getParameter("email");
		long phone = Long.parseLong(req.getParameter("phone"));
		String message = req.getParameter("message");
		int contactId = Integer.parseInt(req.getParameter("contactId"));
		
		Contact contact = new Contact(userId, name, email, phone, message, contactId);
		
		ContactDAO dao = new ContactDAOImpl();
		
		boolean saveContact = dao.saveContact(contact);
		
		PrintWriter out = resp.getWriter();
		
		if(saveContact) {
			//out.println("Contact Saved Successfully!");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Contact created successfully!');");
			out.println("location='userview.jsp';");
			out.println("</script>");
		}
		else {
			//out.println("try again");
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Contact creation failed! Please try again.');");
			out.println("location='contact.jsp';");
			out.println("</script>");
		}
		
	}
}
