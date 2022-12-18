package com.techelevator.controller;

import com.techelevator.dao.BreweryDao;
import com.techelevator.dao.UserDao;
import com.techelevator.model.Brewery;
import com.techelevator.model.NewBreweryDto;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class BreweryController {
    private BreweryDao breweryDao;
    private UserDao userDao;

    public BreweryController(BreweryDao breweryDao, UserDao userDao) {
        this.breweryDao = breweryDao;
        this.userDao = userDao;
    }

    // List Breweries
    @RequestMapping(path = "/breweries", method = RequestMethod.GET)
    public List<Brewery> findBreweries() {
        List<Brewery> breweries = breweryDao.listBreweries();
        return breweries;
    }

    // Get Brewery
    @RequestMapping(path = "/breweries/{breweryId}", method = RequestMethod.GET)
    public Brewery getBreweryById(@PathVariable int breweryId) {
        return breweryDao.getBreweryById(breweryId);
    }

    // Create Brewery
    @RequestMapping(path = "/breweries", method = RequestMethod.POST)
    public void addBrewery(@RequestBody NewBreweryDto newBreweryDto) {
        breweryDao.addBrewery(newBreweryDto);
        userDao.upgradeUser(newBreweryDto);
    }

    // Update Brewery
    @RequestMapping(path = "/breweries/{breweryId}", method = RequestMethod.PUT)
    public void updateBrewery(@RequestBody Brewery breweryToUpdate, @PathVariable int breweryId) {
        breweryDao.updateBrewery(breweryToUpdate, breweryId);
    }

}



