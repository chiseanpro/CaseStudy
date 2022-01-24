package com.seanchi.stayfit.dao;

import java.util.List;

import com.seanchi.stayfit.entity.Trainer;

public interface TrainerDao {
	
	public List<Trainer> getAllTrainers();

	public void editTrainer(Trainer theTrainer);

	public Trainer getTrainerById(int theId);

	public void deleteTrainer(int theId);
	
}
