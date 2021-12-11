package com.TNABank.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.TNABank.model.Account;
import com.TNABank.model.Transfer;
import com.TNABank.model.User;
import com.TNABank.repository.AccountRepository;
import com.TNABank.repository.TransferRepository;

@Service

public class TransferService { 
	
	@Autowired
	TransferRepository transferRepository;
	
	@Autowired
	AccountRepository accountRepository;
	
	
	public Transfer makeTransfer(Transfer transfer) {
		//TODO: we can other conditions
		if((transfer.getFrom().getSold() - transfer.getAmount() >= 0) && (transfer.getAmount() > 0)) {
			// TODO: need transactions ?!!
			accountRepository.updateAccountSold(- transfer.getAmount(), transfer.getFrom().getId());
			accountRepository.updateAccountSold(transfer.getAmount(), transfer.getTo().getId());
			transfer.setDate(new Date());
			Transfer transferData = transferRepository.save(transfer);
			return transferData;
		}
		else {
			return null;
		}
	}
	
	public List<Transfer> getUserTransfers(Integer id) {
		User user =new User(id);
		List<Account> accounts = accountRepository.findByUser(user);
		List<Transfer> transfers = transferRepository.findByFroms(accounts);
		return transfers;
	}
}
