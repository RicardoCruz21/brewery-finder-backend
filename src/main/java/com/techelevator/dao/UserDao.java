package com.techelevator.dao;

import com.techelevator.model.NewBreweryDto;
import com.techelevator.model.User;

import java.util.List;

public interface UserDao {

    void upgradeUser(NewBreweryDto newBreweryDto);

    List<User> findAllBeerLovers();

    List<User> findAll();

    User getUserById(int userId);

    User findByUsername(String username);

    int findIdByUsername(String username);

    boolean create(String username, String password, String role);

    int findBreweryIdByUserId(int userId);
}
