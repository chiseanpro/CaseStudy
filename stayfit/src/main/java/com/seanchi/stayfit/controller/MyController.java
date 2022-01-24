package com.seanchi.stayfit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
@Controller
public class MyController {
		
	@GetMapping("/")
	public String showLoginPage() {	
		return "startPage";	
	}

	@GetMapping("/showMyLoginPage")
	public String showMyLoginPage() {
		return "adminLogin";
	}
}
