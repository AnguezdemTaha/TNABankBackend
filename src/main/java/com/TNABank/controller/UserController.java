package com.TNABank.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TNABank.model.User;
import com.TNABank.service.UserService;

@RestController 
@CrossOrigin
public class UserController {

	@Autowired 
	private UserService moduleService; 

	@RequestMapping(value="")  
	public String getHello() {
	 	return "Bienvenu dans l’application TNA consulting EBank";
	}
	
	@RequestMapping(value="/users/{id}")  
	public Optional<User> getUserById(@PathVariable Integer id) {
	 	return moduleService.getUser(id);
	}

}
