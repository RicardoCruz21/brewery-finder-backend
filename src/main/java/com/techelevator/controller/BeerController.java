package com.techelevator.controller;

import com.techelevator.dao.BeerDao;
import com.techelevator.dao.ReviewDao;
import com.techelevator.model.Beer;
import com.techelevator.model.Review;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Objects;

@RestController
@CrossOrigin
public class BeerController {

    private BeerDao beerDao;
    private ReviewDao reviewDao;

    public BeerController(BeerDao beerDao, ReviewDao reviewDao) {
        this.beerDao = beerDao;
        this.reviewDao = reviewDao;
    }

   // Get list of Beers
    @RequestMapping(path = "/beers/", method = RequestMethod.GET)
    public List<Beer> getBeersById (@RequestParam int breweryId, @RequestParam String filter) {
        String active = "active";
        String all = "all";
        if (Objects.equals(filter, active)) {
            return beerDao.listActiveBeers(breweryId);
        } else if (Objects.equals(filter, all)) {
            return beerDao.listBeers(breweryId);
        }
        else return null;
    }

    // Get Beer
    @RequestMapping(path = "/beers/{beerId}", method = RequestMethod.GET)
    public Beer getBeer(@PathVariable int beerId) {
        return beerDao.getBeer(beerId);
    }

    // Create Beer
    @RequestMapping(path = "/beers", method = RequestMethod.POST)
    public void addBeer(@RequestBody Beer beer) {
        beerDao.addBeer(beer);
    }

    // Update Beer
    @RequestMapping(path = "/beers/{beerId}", method = RequestMethod.PUT)
    public void updateBeer(@RequestBody Beer beer, @PathVariable int beerId) {
        beerDao.updateBeer(beer, beerId);
    }

    // Deactivate/Activate Beer
    @RequestMapping(path = "/beers/{beerId}", method = RequestMethod.DELETE)
    public void deleteBeer(@PathVariable int beerId) {
        beerDao.deleteBeer(beerId);
    }

    // List Reviews for a beer
    @RequestMapping(path = "/beers/{beerId}/reviews", method = RequestMethod.GET)
    public List<Review> listReviews(@PathVariable int beerId) {
        return reviewDao.listReviews(beerId);
    }

}
