package com.dao;

import java.util.List;

import com.model.Supplier;

public interface SupplierDAO {


public List<Supplier> getAllSupplier();
	
	public Supplier getSupplierById(int id);
	
	public void addSupplier(Supplier supplier);
	public void updateSupplier(Supplier supplier);

	public void deleteSupplier(int id);
}
