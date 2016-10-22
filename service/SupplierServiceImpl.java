package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.SupplierDAO;
import com.model.Supplier;
import com.service.SupplierService;

@Service
public class SupplierServiceImpl implements SupplierService{
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	public void setSupplierDAO(SupplierDAO supplierDAO){
		this.supplierDAO = supplierDAO;
	}

	@Transactional
	public List<Supplier> getAllSupplier() {
		
		return this.supplierDAO.getAllSupplier();
	}

	@Transactional
	public Supplier getSupplierById (int id) {
		return this.supplierDAO.getSupplierById(id);
	}

	@Transactional
	public void addSupplier(Supplier supplier) {
		this.supplierDAO.addSupplier(supplier);
		
	}
	@Transactional
	public void updateSupplier(Supplier supplier) {
		this.supplierDAO.updateSupplier(supplier);
	}

	@Transactional
	public void deleteSupplier(int id) {
		this.supplierDAO.deleteSupplier(id);
		
	}		
}