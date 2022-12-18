package com.techelevator.controller;

import com.techelevator.dao.ReviewDao;
import com.techelevator.model.Beer;
import com.techelevator.model.Review;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
public class ReviewController {

    private ReviewDao reviewDao;

    public ReviewController(ReviewDao reviewDao) {
        this.reviewDao = reviewDao;
    }

    // Add Review
    @RequestMapping(path = "/reviews", method = RequestMethod.POST)
    public void addReview(@RequestBody Review aReview) {
        reviewDao.addReview(aReview);
    }

}
