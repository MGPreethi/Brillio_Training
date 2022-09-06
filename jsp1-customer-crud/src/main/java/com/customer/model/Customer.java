package com.customer.model;

public class Customer {
	protected int id;
	protected String name;
	protected String email;
	protected String country;
	protected String phone;
	
	public Customer(int id, String name, String email, String country, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.country = country;
		this.phone = phone;
	}
	public Customer(String name, String email, String country, String phone) {
		super();
		this.name = name;
		this.email = email;
		this.country = country;
		this.phone = phone;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
		
}
