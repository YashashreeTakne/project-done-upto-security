package com.dao;

import java.util.List;

import com.model.Category;

public interface CategoryDAO {
	
    public List<Category> getAllCategory();
	
	public Category getCategoryById(int Catid);
	
	public void addCategory(Category category);
		
	public void updateCategory(Category category);

	public void deleteCategory(int Catid);

}