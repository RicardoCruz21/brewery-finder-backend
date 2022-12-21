package com.techelevator.dao;

import com.techelevator.model.Image;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcImageDao implements ImageDao {

    private JdbcTemplate jdbcTemplate;

    public JdbcImageDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public Image getImage(int imageId) {
        Image image = new Image();
        String sql = "SELECT image_id, image_name, image_size, image_type, image_content FROM images WHERE image_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, imageId);
        if (results.next()) {
            image = mapRowToImage(results);
        }
        return image;
    }

    @Override
    public int addImage(Image image) {
        String sqlImage = "INSERT INTO images (image_name, image_size, image_type, image_content) VALUES (?, ?, ?, ?) RETURNING image_id;";
        int imageId = jdbcTemplate.queryForObject(sqlImage, int.class, image.getName(), image.getSize(), image.getType(), image.getContent());
        return imageId;
    }

    private Image mapRowToImage(SqlRowSet rowSet) {
        Image image = new Image();
        image.setId(rowSet.getInt("image_id"));
        image.setName(rowSet.getString("image_name"));
        image.setSize(rowSet.getLong("image_size"));
        image.setType(rowSet.getString("image_type"));
        image.setContent((byte[])rowSet.getObject("image_content"));
        return image;
    }
}
