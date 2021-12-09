package com.user.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.origin.SystemEnvironmentOrigin;
import org.springframework.stereotype.Service;

import com.user.model.User;
import com.user.repository.UserRepository;

//suite import
import java.util.Arrays;

@Service 

public class ModuleService { 
	
	@Autowired
	UserRepository userRepository;
	
	private List<User> users = null;
	
	public Optional<User> getUser(Integer id) {
		Optional<User> userData = userRepository.findById(id);
		/* System.out.print("user :::");
		System.out.print(userData); */
		return userData;
	}
	
	public void addUser(User user) {
		users.add(user);
	}
	
	public void updateUser(Integer id, User user) {
		users.add(user);
		// Todo
	}

}

