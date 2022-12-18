package com.techelevator.dao;


import com.techelevator.model.Address;
import com.techelevator.model.Beer;
import com.techelevator.model.Brewery;
import com.techelevator.model.NewBreweryDto;

import java.util.List;

public interface BreweryDao {

    List<Brewery> listBreweries();

    Brewery getBreweryById(int breweryId);

    void addBrewery(NewBreweryDto newBreweryDto);

    void updateBrewery(Brewery breweryToUpdate, int breweryId);

}
