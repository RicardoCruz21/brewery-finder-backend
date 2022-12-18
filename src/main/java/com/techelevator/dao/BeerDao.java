package com.techelevator.dao;

import com.techelevator.model.Beer;

import java.util.List;

public interface BeerDao {

    List<Beer> listBeers(int breweryId);

    Beer getBeer(int beerId);

    void addBeer(Beer beer);

    void deleteBeer(int beerId);

    public List<Beer> listActiveBeers(int breweryId);

    public void updateBeer(Beer beer, int beerId);
}
