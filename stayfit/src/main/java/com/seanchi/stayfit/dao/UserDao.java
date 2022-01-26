package com.seanchi.stayfit.dao;

import java.util.List;

import com.seanchi.stayfit.entity.User;

public interface UserDao {
	
	public void register(User theUser);
	
	public User userValidation (User theUser);
	
	public List<User> getUserList();
}
