package com.amdocs.training.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController
{
	@GetMapping("/users")
	public String registrationPage()
	{
		return "registration";
	}
}
