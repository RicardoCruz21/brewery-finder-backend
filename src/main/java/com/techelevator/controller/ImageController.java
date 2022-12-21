package com.techelevator.controller;

import com.techelevator.dao.ImageDao;
import com.techelevator.model.Image;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RestController
@CrossOrigin
public class ImageController {

    private ImageDao imageDao;

    public ImageController(ImageDao imageDao) {
        this.imageDao = imageDao;
    }

    @RequestMapping(path = "/images/{imageId}", method = RequestMethod.GET)
    public Image downloadImage(@PathVariable int imageId) {
        return imageDao.getImage(imageId);
    }

    @RequestMapping(path = "/images", method = RequestMethod.POST)
    public int uploadImage(@RequestParam MultipartFile multipartImage) throws Exception {
        Image dbImage = new Image();
        dbImage.setName(multipartImage.getOriginalFilename());
        dbImage.setSize(multipartImage.getSize());
        dbImage.setType(multipartImage.getContentType());
        dbImage.setContent(multipartImage.getBytes());

        return imageDao.addImage(dbImage);
    }
}
