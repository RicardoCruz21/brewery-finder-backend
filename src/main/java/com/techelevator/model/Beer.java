package com.techelevator.model;

public class Beer {

    private int beerId;
    private int breweryId;
    private String beerName;
    private String beerDescription;
    private String beerImage;
    private double beerAbv;
    private String beerType;
    private boolean isActive;
    private int averageRating;

    public Beer(int beerId, int breweryId, String beerName, String beerDescription, String beerImage, double beerAbv, String beerType, boolean isActive, int averageRating) {
        this.beerId = beerId;
        this.breweryId = breweryId;
        this.beerName = beerName;
        this.beerDescription = beerDescription;
        this.beerImage = beerImage;
        this.beerAbv = beerAbv;
        this.beerType = beerType;
        this.isActive = isActive;
        this.averageRating = averageRating;
    }

    public Beer() {}


    public int getBeerId() {
        return beerId;
    }

    public void setBeerId(int beerId) {
        this.beerId = beerId;
    }

    public String getBeerName() {
        return beerName;
    }

    public void setBeerName(String beerName) {
        this.beerName = beerName;
    }

    public String getBeerDescription() {
        return beerDescription;
    }

    public void setBeerDescription(String beerDescription) {
        this.beerDescription = beerDescription;
    }

    public String getBeerImage() {
        return beerImage;
    }

    public void setBeerImage(String beerImage) {
        this.beerImage = beerImage;
    }

    public double getBeerAbv() {
        return beerAbv;
    }

    public void setBeerAbv(double beerAbv) {
        this.beerAbv = beerAbv;
    }

    public String getBeerType() {
        return beerType;
    }

    public void setBeerType(String beerType) {
        this.beerType = beerType;
    }

    public boolean isActive() {
        return isActive;
    }

    public void setActive(boolean active) {
        isActive = active;
    }

    public int getBreweryId() {return breweryId;}

    public void setBreweryId(int breweryId) {this.breweryId = breweryId;}

    public int getAverageRating() {
        return averageRating;
    }

    public void setAverageRating(int averageRating) {
        this.averageRating = averageRating;
    }
}
