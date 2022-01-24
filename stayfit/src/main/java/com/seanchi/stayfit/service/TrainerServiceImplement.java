package com.seanchi.stayfit.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seanchi.stayfit.dao.TrainerDao;
import com.seanchi.stayfit.entity.Trainer;

@Service
public class TrainerServiceImplement implements TrainerService{

	@Autowired
	private TrainerDao trainerDao;
	
	@Override
	@Transactional
	public List<Trainer> getAllTrainers() {
		return trainerDao.getAllTrainers();
	}

	@Override
	@Transactional
	public void editTrainer(Trainer theTrainer) {
		trainerDao.editTrainer(theTrainer);
		
	}

	@Override
	@Transactional
	public Trainer getTrainerById(int theId) {
		return trainerDao.getTrainerById(theId);
	}

	@Override
	@Transactional
	public void deleteTrainer(int theId) {
		trainerDao.deleteTrainer(theId);
	}

}
