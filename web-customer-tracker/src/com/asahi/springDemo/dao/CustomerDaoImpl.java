package com.asahi.springDemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.asahi.springDemo.entity.Customer;

@Repository
public class CustomerDaoImpl implements CustomerDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Customer> getCustomers() {
		
		
		Session session = sessionFactory.getCurrentSession();
		
		Query<Customer> theQuery = session.createQuery("from Customer order by lastName", Customer.class);
		
		List<Customer> customers = theQuery.getResultList();
		
		return customers;
	}

	@Override
	public void saveCustomer(Customer theCustomer) {
		
		Session session = sessionFactory.getCurrentSession();
		
		session.saveOrUpdate(theCustomer);
		
	}

	@Override
	public Customer getCustomer(int id) {
		Session session = sessionFactory.getCurrentSession();
		
		Customer c = session.get(Customer.class, id);
		return c;
	}

	@Override
	public void deleteCustomer(int id) {
		
		Session session = sessionFactory.getCurrentSession();
		Query<Customer> theQuery = session.createQuery("delete from Customer where id=:customerId");
		theQuery.setParameter("customerId", id);
		theQuery.executeUpdate();
	}

}
