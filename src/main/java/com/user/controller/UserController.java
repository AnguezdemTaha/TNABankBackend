package com.user.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.user.model.User;
import com.user.service.ModuleService;

@RestController 
public class UserController {

	@Autowired 
	private ModuleService moduleService; 

	@GetMapping("/t")
	public String index() {
		return "Greetings from Spring Boot! ttt";
	}
	
	@RequestMapping("/users/{id}")  
	public Integer getUser(Integer id) {
	 	// return moduleService.getUser(id);
		// another commit for heroku test
		return id;
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/users")
	public void addUser(@RequestBody User user) {
		moduleService.addUser(user);	
	}

	@RequestMapping(method=RequestMethod.PUT, value="/users/{id}")
	public void modifierModule(@RequestBody User user, @PathVariable Integer id) {
		moduleService.updateUser(id, user);	
	}


}
