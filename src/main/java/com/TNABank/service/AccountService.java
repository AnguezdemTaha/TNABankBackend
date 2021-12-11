package com.TNABank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TNABank.model.Account;
import com.TNABank.model.User;
import com.TNABank.repository.AccountRepository;

@Service 

public class AccountService { 
	
	@Autowired
	AccountRepository accountRepository;
	
	public List<Account> getUserAccounts(Integer id) {
		User user = new User(id);
		List<Account> userAccounts = accountRepository.findByUser(user);
		return userAccounts;
	}
	
}
