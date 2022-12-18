package com.techelevator.model;

public class Review {
    private int reviewId;
    private String reviewText;
    private int userId;
    private int rating;
    private String image;
    private int beerId;

    public int getBeerId() {return beerId;}

    public void setBeerId(int beerId) {this.beerId = beerId;}

    public int getRating() {return rating;}

    public void setRating(int rating) {this.rating = rating;}

    public int getReviewId() {
        return reviewId;
    }

    public void setReviewId(int reviewId) {
        this.reviewId = reviewId;
    }

    public String getReviewText() {
        return reviewText;
    }

    public void setReviewText(String reviewText) {
        this.reviewText = reviewText;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
