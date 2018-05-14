package shop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.ImageDAO;
import shop.entities.Image;

@Service
public class ImageService {
	@Autowired
	ImageDAO imageDAO;

	public ArrayList<Image> getAllImage() {
		return imageDAO.getAllImage();
	}

	public boolean insertImage(Image image) {
		return imageDAO.insertImage(image);
	}

	public boolean updateImage(Image image) {
		return imageDAO.updateImage(image);
	}

	public Image findImageById(long imageId) {
		return imageDAO.findImageByID(imageId);
	}
}
