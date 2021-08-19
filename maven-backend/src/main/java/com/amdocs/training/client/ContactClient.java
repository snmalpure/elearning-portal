package com.amdocs.training.client;

import com.amdocs.training.dao.ContactDAO;
import com.amdocs.training.dao.impl.ContactDAOImpl;
import com.amdocs.training.model.Contact;

public class ContactClient
{
	public static void main(String args[])
	{
		ContactDAO dao = new ContactDAOImpl();
		
		Contact contact = new Contact(202, "Admin", "admin@amdocs.com", 4387, "Message", 7);
		dao.saveContact(contact);
		System.out.println("saved successfully");
	}
}
