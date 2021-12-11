package com.TNABank.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import com.TNABank.model.Account;
import com.TNABank.model.User;

public interface AccountRepository extends CrudRepository<Account, Integer> {
	List<Account> findByUser(User user);
	
	@Transactional
	@Modifying
	@Query("update Account a set a.sold = a.sold + ?1 where a.id = ?2")
	void updateAccountSold(float amount, int id);
}