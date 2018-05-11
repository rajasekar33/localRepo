package com.asahi.springDemo.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.asahi.springDemo.dao.CustomerDao;
import com.asahi.springDemo.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDao customerDao;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		
		return customerDao.getCustomers();
	}

	@Override
	@Transactional
	public void createCustomer(Customer theCustomer) {
		
		customerDao.saveCustomer(theCustomer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int id) {
		
		Customer c = customerDao.getCustomer(id);
		
		return c;
	}

	@Override
	@Transactional
	public void deleteCustomer(int id) {
		
		customerDao.deleteCustomer(id);
	}

}
