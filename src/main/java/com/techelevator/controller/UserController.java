package com.techelevator.controller;

import com.techelevator.dao.BeerDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Beer;
import com.techelevator.model.Brewery;
import com.techelevator.model.User;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class UserController {

    private UserDao userDao;
    public UserController(UserDao userDao) {
        this.userDao = userDao;
    }

    // Get List of Users
    @RequestMapping(path = "/users", method = RequestMethod.GET)
    public List<User> listUsers() {
        return userDao.findAllBeerLovers();
    }

    // Get BreweryId by UserId
    @RequestMapping(path = "/users/{userId}", method = RequestMethod.GET)
    public int findBreweryIdByUserId(@PathVariable int userId) {
        return userDao.findBreweryIdByUserId(userId);
    }

}
