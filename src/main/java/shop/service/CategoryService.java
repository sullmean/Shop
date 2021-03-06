package shop.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import shop.dao.CategoryDAO;
import shop.entities.Category;

@Service
public class CategoryService {
	@Autowired
	CategoryDAO categoryDAO;

	public ArrayList<Category> getAllcategory() {
		return categoryDAO.getAllcategory();
	}

	public boolean insertCategory(Category category) {
		return categoryDAO.insertCategory(category);
	}

	public boolean updateCategory(Category category) {
		return categoryDAO.updateCategory(category);
	}

	public Category findCategoryById(long categoryId) {
		return categoryDAO.findCategoryByID(categoryId);
	}

	public ArrayList<Category> getAllCategoryAdmin() {
		return categoryDAO.getAllCategoryAdmin();
	}
}
