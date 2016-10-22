package com.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Supplier;
import com.service.SupplierService;

@Controller
public class SupplierController {

	@Autowired
	private SupplierService supplierService;
	
	public SupplierService getSupplierService() {
		return supplierService;
	}
	
	//@Qualifier(value="supplierService")
	public void setSupplierService(SupplierService ss){
		this.supplierService = ss;
	}
	
	@RequestMapping(value = "/suppliers", method = RequestMethod.GET)
	public String getAllSupplier(Model model) {
		model.addAttribute("supplier", new Supplier());
		System.out.println("Hello6");
		model.addAttribute("getAllSupplier", this.supplierService.getAllSupplier());
		return "supplier";
	}
	
	//For add and update supplier both
	

	//For add and update supplier both
	@RequestMapping(value= "/admin/supplier/add", method = RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier s){
		
		if(s.getId() == 0){
			//new Supplier, add it
			this.supplierService.addSupplier(s);
		}else{
			//existing Supplier, call update
			this.supplierService.updateSupplier(s);
		}
				
		return "redirect:/suppliers";
	}
	
	@RequestMapping("/admin/remove/{id}")
    public String removeSupplier(@PathVariable(value="id") int id){
		
        this.supplierService.deleteSupplier(id);
         
		return "supplier";
      }
 
    @RequestMapping("/admin/edit/{id}")
    public String editSupplier(@PathVariable("id") int id, Model model){
        model.addAttribute("supplier", this.supplierService.getSupplierById(id));
        model.addAttribute("getAllSupplier", this.supplierService.getAllSupplier());
        return "supplier";
    }
}
