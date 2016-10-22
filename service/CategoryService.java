package com.service;

import java.util.List;

import com.model.Category;

public interface CategoryService {
	
public List<Category> getAllCategory();
	
	public Category getCategoryById(int Catid);
	
	public void addCategory(Category category);
	
	public void deleteCategory(int Catid);
	
	public void updateCategory(Category category);

}