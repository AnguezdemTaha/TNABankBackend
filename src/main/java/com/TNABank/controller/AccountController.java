package com.TNABank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.TNABank.model.Account;
import com.TNABank.service.AccountService;

@RestController 
public class AccountController {

	@Autowired 
	private AccountService accountService; 

	@RequestMapping(value="/users/{id}/accounts")  
	public List<Account> getUserAcounts(@PathVariable Integer id) {
	 	return accountService.getUserAccounts(id);
	}
}
