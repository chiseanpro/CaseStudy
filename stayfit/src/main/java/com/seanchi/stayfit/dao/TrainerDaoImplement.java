package com.seanchi.stayfit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.seanchi.stayfit.entity.Trainer;

@Repository
public class TrainerDaoImplement implements TrainerDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Trainer> getAllTrainers() {
		Session mySession = sessionFactory.getCurrentSession();		
		Query<Trainer> myQuery = mySession.createQuery("from Trainer", Trainer.class);		
		List <Trainer> trainers = myQuery.getResultList();		
		return trainers;
	}

	@Override
	public void editTrainer(Trainer theTrainer) {
		Session mySession = sessionFactory.getCurrentSession();
		mySession.saveOrUpdate(theTrainer);
	}

	@Override
	public Trainer getTrainerById(int theId) {
		Session mySession = sessionFactory.getCurrentSession();
		Trainer trainer = mySession.get(Trainer.class, theId);		
		return trainer;
	}

	@Override
	public void deleteTrainer(int theId) {	
		Session mySession = sessionFactory.getCurrentSession();
		Query myQuery = mySession.createQuery("delete from Trainer where id=:trainerID");
		myQuery.setParameter("trainerID", theId);
		myQuery.executeUpdate();	
	}

}
