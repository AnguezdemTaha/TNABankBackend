package com.TNABank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.TNABank.model.Transfer;
import com.TNABank.service.TransferService;

@RestController 
public class TransferController {

	@Autowired 
	private TransferService transferService; 

	@CrossOrigin
	@RequestMapping(method=RequestMethod.POST, value="/transfer")  
	public Transfer makeTransfer(@RequestBody Transfer transfer) {
	 	return transferService.makeTransfer(transfer);
	}
	
	@CrossOrigin
	@RequestMapping(value="/users/{id}/transfers")  
	public List<Transfer> getUserTransfers(@PathVariable Integer id) {
	 	return transferService.getUserTransfers(id);
	}
}