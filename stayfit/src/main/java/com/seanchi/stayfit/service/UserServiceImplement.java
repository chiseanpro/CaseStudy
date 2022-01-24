package com.seanchi.stayfit.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.seanchi.stayfit.dao.UserDao;
import com.seanchi.stayfit.entity.User;

@Service
public class UserServiceImplement implements UserService {

	@Autowired
	UserDao userDao;
	
	@Override
	@Transactional
	public void register(User theUser) {
		userDao.register(theUser);
	}

	@Override
	@Transactional
	public User userValidation(User theUser) {
		return userDao.userValidation(theUser);
	}

}
