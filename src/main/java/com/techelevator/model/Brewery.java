package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

public class Brewery {

    private int breweryId;
    private String breweryName;
    private int userId;
    private String websiteUrl;
    private String emailAddress;
    private Address address = null;
    private List<Hours> hours = new ArrayList<>();
    private String phoneNumber;
    private String breweryHistory;
    private String breweryLogo;
    private String breweryImage;
    private Boolean isActive;

    public Brewery(int breweryId, String breweryName, int userId, String websiteUrl, String emailAddress, Address address, List<Hours> hours, String phoneNumber, String breweryHistory, String breweryLogo, String breweryImage, Boolean isActive) {
        this.breweryId = breweryId;
        this.breweryName = breweryName;
        this.userId = userId;
        this.websiteUrl = websiteUrl;
        this.emailAddress = emailAddress;
        this.address = address;
        this.hours = hours;
        this.phoneNumber = phoneNumber;
        this.breweryHistory = breweryHistory;
        this.breweryLogo = breweryLogo;
        this.breweryImage = breweryImage;
        this.isActive = isActive;
    }

    public Brewery(){}

    public int getBreweryId() {
        return breweryId;
    }

    public void setBreweryId(int breweryId) {
        this.breweryId = breweryId;
    }

    public String getBreweryName() {
        return breweryName;
    }

    public void setBreweryName(String breweryName) {
        this.breweryName = breweryName;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getWebsiteUrl() {
        return websiteUrl;
    }

    public void setWebsiteUrl(String websiteUrl) {
        this.websiteUrl = websiteUrl;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getBreweryHistory() {
        return breweryHistory;
    }

    public void setBreweryHistory(String breweryHistory) {
        this.breweryHistory = breweryHistory;
    }

    public String getBreweryLogo() {
        return breweryLogo;
    }

    public void setBreweryLogo(String breweryLogo) {
        this.breweryLogo = breweryLogo;
    }

    public Boolean getActive() {
        return isActive;
    }

    public void setActive(Boolean active) {
        isActive = active;
    }

    public String getBreweryImage() {
        return breweryImage;
    }

    public void setBreweryImage(String breweryImage) {
        this.breweryImage = breweryImage;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public List<Hours> getHours() {
        return hours;
    }

    public void setHours(List<Hours> hours) {
        this.hours = hours;
    }
}
