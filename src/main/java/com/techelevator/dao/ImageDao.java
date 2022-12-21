package com.techelevator.dao;

import com.techelevator.model.Image;

public interface ImageDao {

    Image getImage(int imageId);

    int addImage(Image image);
}
