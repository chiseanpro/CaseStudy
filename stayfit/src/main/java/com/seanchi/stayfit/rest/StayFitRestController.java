package com.seanchi.stayfit.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.seanchi.stayfit.entity.Trainer;
import com.seanchi.stayfit.entity.User;
import com.seanchi.stayfit.service.TrainerService;
import com.seanchi.stayfit.service.UserService;

@RestController
@RequestMapping("/restapi")
public class StayFitRestController {
	
	@Autowired
	TrainerService trainerService;
	
	@Autowired
	UserService userService;
	
	@RequestMapping("/getTrainers")
	public List<Trainer> getAllTrainers(){
		return trainerService.getAllTrainers();
	}
	
	@RequestMapping("/getUsers")
	public List<User> getAllUsers(){
		return userService.getUserList();
	}
	
	@GetMapping("/getTrainers/{trainerId}")
	public Trainer getUser(@PathVariable int trainerId) {
		Trainer theTrainer = trainerService.getTrainerById(trainerId);
		return theTrainer;
	}
}
