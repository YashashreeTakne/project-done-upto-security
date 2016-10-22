package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CategoryDAO;
import com.model.Category;
import com.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	public void setCategoryDAO(CategoryDAO categoryDAO){
		this.categoryDAO = categoryDAO;
	}

	@Transactional
	public List<Category> getAllCategory() {
		
		return this.categoryDAO.getAllCategory();
	}

	@Transactional
	public Category getCategoryById(int Catid) {
		
		return this.categoryDAO.getCategoryById(Catid);
	}

	@Transactional
	public void addCategory(Category category) {
		this.categoryDAO.addCategory(category);
		
	}

	@Transactional
	public void deleteCategory(int Catid) {
		this.categoryDAO.deleteCategory(Catid);
		
	}
	
	@Transactional
	public void updateCategory(Category category) {
		this.categoryDAO.updateCategory(category);
	}

}