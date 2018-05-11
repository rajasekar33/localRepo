package com.asahi.springDemo.services;

import java.util.List;

import com.asahi.springDemo.entity.Customer;

public interface CustomerService {

	public List<Customer> getCustomers();

	public void createCustomer(Customer theCustomer);

	public Customer getCustomer(int id);

	public void deleteCustomer(int id);
}
