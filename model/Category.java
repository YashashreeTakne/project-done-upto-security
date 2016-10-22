package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotBlank;

@Entity
public class Category {

	@Id
	@GeneratedValue
	private int Catid;
//	public Category() {
//		this.Catid = UUID.randomUUID().toString().substring(10, 16);
//	}

	@NotBlank(message ="please enter name of the item")
	private String Catname;
	
	@NotBlank(message ="please enter the Description")
	private String description;
	
	
	public int getCatId() {
		return Catid;
	}
	public void setCatId(int Catid) {
		this.Catid = Catid;
	}
	
	public String getName() {
		return Catname;
	}
	public void setName(String Catname) {
		this.Catname = Catname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
}