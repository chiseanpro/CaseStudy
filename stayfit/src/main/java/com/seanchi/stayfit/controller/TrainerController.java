package com.seanchi.stayfit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.seanchi.stayfit.entity.Trainer;
import com.seanchi.stayfit.service.TrainerService;

@Controller
@RequestMapping("/trainer")
public class TrainerController {
	
	@Autowired
	private TrainerService trainerService;
	
	@RequestMapping("/trainerList")
	public String listTrainer(Model theModel) 
	{
		List<Trainer> theTrainers = trainerService.getAllTrainers();
		theModel.addAttribute("trainers",theTrainers);
		return "trainerListPage";
	}
	
	@RequestMapping("/addTrainerPage")
	public String addTrainerPage(Model theModel) 
	{
		Trainer theTrainer = new Trainer();
		theModel.addAttribute("trainer",theTrainer);
		return "trainerEditorPage";
	}
	
	@PostMapping("/editTrainer")
	public String editTrainer(@ModelAttribute("trainer") Trainer theTrainer)
	{
		trainerService.editTrainer(theTrainer);
		return "redirect:/trainer/trainerList";
	}
	
	@GetMapping("/updateTrainerInfo")
	public String updateTrainerInfo(@RequestParam("trainerId") int trainerId, Model theModel)
	{
		Trainer theTrainer = trainerService.getTrainerById(trainerId);
		theModel.addAttribute("trainer",theTrainer);
		return "trainerEditorPage";
	}
	
	@GetMapping("/deleteTrainer")
	public String deleteTrainer(@RequestParam("trainerId") int trainerId, Model theModel) {
		trainerService.deleteTrainer(trainerId);
		return "redirect:/trainer/trainerList";
	}
	
}
