package com.techelevator.controller;

import com.techelevator.dao.ImageDao;
import com.techelevator.model.Image;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.server.ResponseStatusException;

import java.io.IOException;

@RestController
@CrossOrigin
public class ImageController {

    private ImageDao imageDao;

    public ImageController(ImageDao imageDao) {
        this.imageDao = imageDao;
    }

//    @RequestMapping(path = "/images/{imageId}", method = RequestMethod.GET)
//    public Image getImage(@PathVariable int imageId) {
//        return imageDao.getImage(imageId);
//    }

    @RequestMapping(path = "/images/{imageId}", method = RequestMethod.GET)
    public ResponseEntity<byte[]> downloadImage(@PathVariable int imageId) {
        try {
            Image image = imageDao.getImage(imageId);
            byte[] imageData = image.getContent();
            return ResponseEntity.status(HttpStatus.OK).contentType(MediaType.parseMediaType(image.getType())).body(imageData);
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Image not found");
        }
    }

    @RequestMapping(path = "/images", method = RequestMethod.POST)
    public int uploadImage(@RequestParam MultipartFile multipartImage) throws IOException {
        Image dbImage = new Image();
        dbImage.setName(multipartImage.getOriginalFilename());
        dbImage.setSize(multipartImage.getSize());
        dbImage.setType(multipartImage.getContentType());
        dbImage.setContent(multipartImage.getBytes());

        return imageDao.addImage(dbImage);
    }

    @RequestMapping(path = "/images/{imageId}", method = RequestMethod.PUT)
    public void updateImage(@RequestParam MultipartFile multipartImage, @PathVariable int imageId) throws IOException {
        Image dbImage = new Image();
        dbImage.setId(imageId);
        dbImage.setName(multipartImage.getOriginalFilename());
        dbImage.setSize(multipartImage.getSize());
        dbImage.setType(multipartImage.getContentType());
        dbImage.setContent(multipartImage.getBytes());

        imageDao.updateImage(dbImage);
    }
}
