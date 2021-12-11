package com.TNABank.repository;


import org.springframework.data.repository.CrudRepository;

import com.TNABank.model.User;

public interface UserRepository extends CrudRepository<User, Integer> {
}

