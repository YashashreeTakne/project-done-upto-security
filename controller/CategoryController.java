package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Category;
import com.service.CategoryService;

@Controller
public class CategoryController {

	@Autowired
	private CategoryService categoryService;
	
	public CategoryService getCategoryService() {
		return categoryService;
	}
	
	//@Qualifier(value="categoryService")
	public void setCategoryService(CategoryService cs){
		this.categoryService = cs;
	}
	
	@RequestMapping(value = "/categorys", method = RequestMethod.GET)
	public String getAllCategory(Model model) {
		model.addAttribute("category", new Category());
		System.out.println("Hello7");
		model.addAttribute("getAllCategory", this.categoryService.getAllCategory());
		return "Category";
	}
	
	//For add and update category both
	

	//For add and update category both
	@RequestMapping(value= "/admin/category/add", method = RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category c){
		
		if(c.getCatId() == 0){
			//new product, add it
			this.categoryService.addCategory(c);
		}else{
			//existing product, call update
			this.categoryService.updateCategory(c);
		}
				
		return "redirect:/categorys";
	}
	
	@RequestMapping("/admin/remove/{Catid}")
    public String removeCategory(@PathVariable(value="Catid") int Catid){
		
        this.categoryService.deleteCategory(Catid);
         
		return "category";
      }
 
    @RequestMapping("/admin/edit/{Catid}")
    public String editCategory(@PathVariable("Catid") int Catid, Model model){
        model.addAttribute("category", this.categoryService.getCategoryById(Catid));
        model.addAttribute("getAllCategory", this.categoryService.getAllCategory());
        return "category";
    }
}
