package com.techelevator.dao;


import com.techelevator.model.Address;
import com.techelevator.model.Brewery;
import com.techelevator.model.Hours;
import com.techelevator.model.NewBreweryDto;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcBreweryDao implements BreweryDao {

    private JdbcTemplate jdbcTemplate;
    public JdbcBreweryDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Brewery> listBreweries() {
        List<Brewery> breweries = new ArrayList<>();
        String sql = "SELECT * FROM breweries WHERE is_active = true;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            Brewery brewery = mapRowToBrewery(results);

            int addressId = results.getInt("address_id");
            brewery.setAddress(getBreweryAddress(addressId));

            int breweryId = results.getInt("brewery_id");
            brewery.setHours(getBreweryHours(breweryId));

            breweries.add(brewery);
        }
        return breweries;
    }

    @Override
    public Brewery getBreweryById(int breweryId) {
        Brewery brewery = null;
        String sql = "SELECT * FROM breweries WHERE brewery_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, breweryId);
        if (results.next()) {
            brewery = mapRowToBrewery(results);

            int addressId = results.getInt("address_id");
            brewery.setAddress(getBreweryAddress(addressId));

            brewery.setHours(getBreweryHours(breweryId));
        }
        return brewery;
    }

    @Override
    public void addBrewery(NewBreweryDto newBreweryDto) {
        String sqlAddresses = "INSERT INTO addresses (street_address, city, state, zipcode) VALUES (?, ?, ?, ?) RETURNING address_id;";
        int addressId = jdbcTemplate.queryForObject(sqlAddresses, int.class, newBreweryDto.getStreetAddress(), newBreweryDto.getCity(), newBreweryDto.getState(), newBreweryDto.getZipcode());
        String sqlBrewery = "INSERT INTO breweries (brewery_name, user_id, address_id, is_active) VALUES (?, ?, ?, false) RETURNING brewery_id";
        int breweryId = jdbcTemplate.queryForObject(sqlBrewery, int.class, newBreweryDto.getName(), newBreweryDto.getUserId(), addressId);
        for (int dayId = 1; dayId <= 7; dayId++) {
            String sqlHours = "INSERT INTO hours (day_id) VALUES (?) RETURNING hours_id;";
            int hoursId = jdbcTemplate.queryForObject(sqlHours, int.class, dayId);
            String sqlBreweryHours = "INSERT INTO breweries_hours (brewery_id, hours_id) VALUES (?, ?);";
            jdbcTemplate.update(sqlBreweryHours, breweryId, hoursId);
        }
    }

    @Override
    public void updateBrewery(Brewery brewery, int breweryId) {
        String sqlBrewery = "UPDATE breweries SET brewery_name = ?, website_url = ?, email_address = ?, phone_number = ?, brewery_history = ?, brewery_logo = ?, brewery_image = ?, is_active = ? WHERE brewery_id = ?;";
        jdbcTemplate.update(sqlBrewery, brewery.getBreweryName(), brewery.getWebsiteUrl(), brewery.getEmailAddress(), brewery.getPhoneNumber(), brewery.getBreweryHistory(), brewery.getBreweryLogo(), brewery.getBreweryImage(), brewery.getActive(), breweryId);
        String sqlAddress = "UPDATE addresses SET street_address = ?, city = ?, state = ?, zipcode = ? WHERE address_id = ?;";
        jdbcTemplate.update(sqlAddress, brewery.getAddress().getStreetAddress(), brewery.getAddress().getCity(), brewery.getAddress().getState(), brewery.getAddress().getZipcode(), brewery.getAddress().getAddressId());
        for (Hours hour : brewery.getHours()) {
            String sqlHours = "UPDATE hours SET opening_hour = ?, closing_hour = ? WHERE hours_id = ?;";
            jdbcTemplate.update(sqlHours, hour.getOpeningHour(), hour.getClosingHour(), hour.getHoursId());
        }
    }

    private Address getBreweryAddress(int addressId) {
        Address breweryAddress = new Address();
        String sql = "SELECT * FROM addresses WHERE address_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, addressId);
        if (results.next()) {
            breweryAddress = mapRowToAddress(results);
        }
        return breweryAddress;
    }

    private List<Hours> getBreweryHours(int breweryId) {
        List<Hours> breweryHours = new ArrayList<>();
        String sql = "SELECT * FROM hours " +
                "JOIN breweries_hours ON breweries_hours.hours_id = hours.hours_id " +
                "WHERE breweries_hours.brewery_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, breweryId);
        while (results.next()) {
            Hours hours = mapRowToHours(results);
            breweryHours.add(hours);
        }
        return breweryHours;
    }


    private Brewery mapRowToBrewery(SqlRowSet results) {
        Brewery brewery = new Brewery();
        brewery.setBreweryId(results.getInt("brewery_id"));
        brewery.setBreweryName(results.getString("brewery_name"));
        brewery.setUserId(results.getInt("user_id"));
        brewery.setWebsiteUrl(results.getString("website_url"));
        brewery.setEmailAddress(results.getString("email_address"));
        brewery.setPhoneNumber(results.getString("phone_number"));
        brewery.setBreweryHistory(results.getString("brewery_history"));
        brewery.setBreweryLogo(results.getString("brewery_logo"));
        brewery.setBreweryImage(results.getString("brewery_image"));
        brewery.setActive(results.getBoolean("is_active"));

        return brewery;
    }

    private Address mapRowToAddress(SqlRowSet rowSet) {
        Address address = new Address();
        address.setAddressId(rowSet.getInt("address_id"));
        address.setStreetAddress(rowSet.getString("street_address"));
        address.setCity(rowSet.getString("city"));
        address.setState(rowSet.getString("state"));
        address.setZipcode(rowSet.getString("zipcode"));
        return address;
    }

    private Hours mapRowToHours(SqlRowSet rowSet) {
        Hours hours = new Hours();
        hours.setHoursId(rowSet.getInt("hours_id"));
        hours.setDay(getDayOfWeek(rowSet.getInt("day_id")));
        if (rowSet.getString("opening_hour") != null) {
            hours.setOpeningHour(LocalTime.parse(rowSet.getString("opening_hour")));
        } else {
            hours.setOpeningHour(LocalTime.MIDNIGHT);
        }
        if (rowSet.getString("closing_hour") != null) {
            hours.setClosingHour(LocalTime.parse(rowSet.getString("closing_hour")));
        } else {
            hours.setClosingHour(LocalTime.MIDNIGHT);
        }
        return hours;
    }

    private String getDayOfWeek(int dayId) {
        String day = "";

        switch(dayId) {
            case 1:
                day = "Sunday";
                break;
            case 2:
                day = "Monday";
                break;
            case 3:
                day = "Tuesday";
                break;
            case 4:
                day = "Wednesday";
                break;
            case 5:
                day = "Thursday";
                break;
            case 6:
                day = "Friday";
                break;
            case 7:
                day = "Saturday";
                break;
        }
        return day;
    }

}
