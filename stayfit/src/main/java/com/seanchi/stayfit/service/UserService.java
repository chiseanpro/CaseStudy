package com.seanchi.stayfit.service;

import java.util.List;

import com.seanchi.stayfit.dao.UserDao;
import com.seanchi.stayfit.entity.User;

public interface UserService {
	
	public void register(User theUser);
	
	public User userValidation (User theUser);

}
