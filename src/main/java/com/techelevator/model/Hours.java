package com.techelevator.model;

import java.time.LocalTime;

public class Hours {

    private int hoursId;
    private String day;
    private LocalTime openingHour;
    private LocalTime closingHour;

    public Hours() {}

    public Hours(int hoursId, String day, LocalTime openingHour, LocalTime closingHour) {
        this.hoursId = hoursId;
        this.day = day;
        this.openingHour = openingHour;
        this.closingHour = closingHour;
    }

    public int getHoursId() {
        return hoursId;
    }

    public void setHoursId(int hoursId) {
        this.hoursId = hoursId;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public LocalTime getOpeningHour() {
        return openingHour;
    }

    public void setOpeningHour(LocalTime openingHour) {
        this.openingHour = openingHour;
    }

    public LocalTime getClosingHour() {
        return closingHour;
    }

    public void setClosingHour(LocalTime closingHour) {
        this.closingHour = closingHour;
    }
}
