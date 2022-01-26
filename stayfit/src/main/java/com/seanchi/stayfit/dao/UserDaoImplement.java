package com.seanchi.stayfit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.seanchi.stayfit.entity.Trainer;
import com.seanchi.stayfit.entity.User;

@Repository
public class UserDaoImplement implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;	
	
	@Override
	public void register(User theUser) {

		Session mySession = sessionFactory.getCurrentSession();
		mySession.saveOrUpdate(theUser);
	}

	@Override
	public User userValidation(User theUser) {

        Session mySession = sessionFactory.getCurrentSession();

        Query myQuery = mySession.createQuery("from User u where u.username=:myUsername AND u.password=:myPassword");
        myQuery.setParameter("myUsername", theUser.getUsername());
        myQuery.setParameter("myPassword", theUser.getPassword());
        
        User user = (User) myQuery.uniqueResult();
        
        return user;
        
	}
	
	@Override
	public List<User> getUserList(){
		Session mySession = sessionFactory.getCurrentSession();		
		Query<User> myQuery = mySession.createQuery("from User", User.class);		
		List <User> Users = myQuery.getResultList();		
		return Users;
	}

}
