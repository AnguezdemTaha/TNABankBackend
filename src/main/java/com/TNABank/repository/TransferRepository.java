package com.TNABank.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.TNABank.model.Account;
import com.TNABank.model.Transfer;

public interface TransferRepository extends CrudRepository<Transfer, Integer> {
	@Query( "select t from Transfer t where t.from in :froms order by t.date desc" )
	List<Transfer> findByFroms(@Param("froms") List<Account> fromList);
}

