package com.techelevator.dao;

import com.techelevator.model.Beer;
import com.techelevator.model.Review;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcBeerDao implements BeerDao {

    private JdbcTemplate jdbcTemplate;
    private ReviewDao reviewDao;

    public JdbcBeerDao(JdbcTemplate jdbcTemplate, ReviewDao reviewDao) {
        this.jdbcTemplate = jdbcTemplate;
        this.reviewDao = reviewDao;
    }


    @Override
    public List<Beer> listBeers(int breweryId) {
        List<Beer> beers = new ArrayList<>();
        String sql = "SELECT beers.beer_id, beer_name, beer_description, image, abv, beer_type, is_active, breweries_beers.brewery_id FROM beers  \n" +
                "JOIN breweries_beers ON breweries_beers.beer_id = beers.beer_id\n" +
                "WHERE breweries_beers.brewery_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, breweryId);
        while (results.next()) {
            Beer beer = mapRowToBeer(results);
            beers.add(beer);
        }
        return beers;
    }

    @Override
    public List<Beer> listActiveBeers(int breweryId) {
        List<Beer> beers = new ArrayList<>();
        String sql = "SELECT beers.beer_id, beer_name, beer_description, image, abv, beer_type, is_active, breweries_beers.brewery_id FROM beers  \n" +
                "JOIN breweries_beers ON breweries_beers.beer_id = beers.beer_id\n" +
                "WHERE breweries_beers.brewery_id = ? AND is_active = true";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, breweryId);
        while (results.next()) {
            Beer beer = mapRowToBeer(results);
            beers.add(beer);
        }
        return beers;
    }


    @Override
    public Beer getBeer(int beerId) {
        Beer beer = new Beer();
        String sql = "SELECT beers.beer_id, beer_name, beer_description, image, abv, beer_type, is_active, breweries_beers.brewery_id FROM beers  \n" +
                "JOIN breweries_beers ON breweries_beers.beer_id = beers.beer_id\n" +
                "WHERE breweries_beers.beer_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, beerId);
        if (results.next()) {
            beer = mapRowToBeer(results);
        }
        return beer;
    }

    @Override
    public void addBeer(Beer beer) {
        String sqlBeer = "INSERT INTO beers (beer_name, beer_description, image, abv, beer_type, is_active) VALUES (?, ?, ?, ?, ?, ?) RETURNING beer_id;";
        int newBeerId = jdbcTemplate.queryForObject(sqlBeer, int.class, beer.getBeerName(), beer.getBeerDescription(), beer.getBeerImage(), beer.getBeerAbv(), beer.getBeerType(), beer.isActive());
        String sqlBeerBrewery = "INSERT INTO breweries_beers (brewery_id, beer_id) VALUES (?, ?)";
        jdbcTemplate.update(sqlBeerBrewery, beer.getBreweryId(), newBeerId);
    }

    @Override
    public void deleteBeer(int beerId) {
        String sql = "UPDATE beers SET is_active = NOT is_active\n" +
                "WHERE beer_id = ?";
        jdbcTemplate.update(sql, beerId);
    }

    @Override
    public void updateBeer(Beer beer, int beerId) {
        String sql = "UPDATE beers SET beer_name = ?, beer_description = ?, image = ?, abv = ?, beer_type = ?, is_active = ? WHERE beer_id = ?";
        jdbcTemplate.update(sql, beer.getBeerName(), beer.getBeerDescription(), beer.getBeerImage(), beer.getBeerAbv(), beer.getBeerType(), beer.isActive(), beerId);
    }

    private Beer mapRowToBeer(SqlRowSet results) {
        Beer beer = new Beer();
        beer.setBeerId(results.getInt("beer_id"));
        beer.setBreweryId(results.getInt("brewery_id"));
        beer.setBeerName(results.getString("beer_name"));
        beer.setBeerDescription(results.getString("beer_description"));
        beer.setBeerImage(results.getString("image"));
        beer.setBeerAbv(results.getDouble("abv"));
        beer.setBeerType(results.getString("beer_type"));
        beer.setActive(results.getBoolean("is_active"));
        beer.setAverageRating(getBeerAverageRating(beer.getBeerId()));
        return beer;
    }

    private int getBeerAverageRating(int beerId) {
        List<Review> reviews = reviewDao.listReviews(beerId);
        double average = 0;
        int sum = 0;
        for (Review review : reviews) {
            sum += review.getRating();
        }
        if (sum != 0) {
            average = sum / reviews.size();
        }

        return (int)average;
    }

}
