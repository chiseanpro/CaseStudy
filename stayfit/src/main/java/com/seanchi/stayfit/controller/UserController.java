package com.seanchi.stayfit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.seanchi.stayfit.entity.Trainer;
import com.seanchi.stayfit.entity.User;
import com.seanchi.stayfit.service.TrainerService;
import com.seanchi.stayfit.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	private TrainerService trainerService;
	
	@GetMapping("/showRegistrate")
	public String showRegistrate(Model theModel) {
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "userRegister";
	}
	
	@PostMapping("/userRegistrateProcess")
	public String register(@ModelAttribute("user") User theUser) {
		userService.register(theUser);
		return "redirect:/user/showUserLogin";
	}
	
	@GetMapping("/showUserLogin")
	public String showUserlogin(Model theModel) {
		User theUser = new User();
		theModel.addAttribute("user", theUser);
		return "userLogin";
	}
	
	@PostMapping("/userloginProcess")
	public String userloginProcess(@ModelAttribute("user") User theUser)
	{
		User myUser = userService.userValidation(theUser);
		
		if (myUser != null) {
			return "redirect:/user/showHomePage";
		}
		else {
			return "redirect:/user/showUserLogin";
		}
	}
	
	@GetMapping("/showHomePage")
	public String showHomePage(Model theModel) {
		return "home";
	}
	
	@GetMapping("/showAboutPage")
	public String showAboutPage(Model theModel) {
		return "about";
	}
	
	@GetMapping("/showContactPage")
	public String showContacttPage(Model theModel) {
		return "contact";
	}
	
	@RequestMapping("/trainingVideo")
	public String trainingVideo(Model theModel) 
	{
		List<Trainer> theTrainers = trainerService.getAllTrainers();
		theModel.addAttribute("trainers",theTrainers);
		return "training";
	}
	
	@RequestMapping("/trainerInfo")
	public String trainerInfo(Model theModel) 
	{
		List<Trainer> theTrainers = trainerService.getAllTrainers();
		theModel.addAttribute("trainers",theTrainers);
		return "trainerInfo";
	}
}
