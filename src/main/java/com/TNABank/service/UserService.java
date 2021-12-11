package com.TNABank.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TNABank.model.User;
import com.TNABank.repository.UserRepository;


@Service 

public class UserService { 
	
	@Autowired
	UserRepository userRepository;
	
	
	public Optional<User> getUser(Integer id) {
		Optional<User> userData = userRepository.findById(id);
		return userData;
	}

}

