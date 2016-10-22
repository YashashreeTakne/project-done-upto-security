package com.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.model.Authorities;
import com.model.Customer;
import com.model.Users;

@Repository
@Transactional
public class CustomerDaoImpl implements CustomerDao{
	
	    @Autowired
	    private SessionFactory sessionFactory;
	
	    @Transactional
	    public void addCustomer(Customer customer){
	        Session session = sessionFactory.getCurrentSession();

	        customer.getBillingAddress().setCustomer(customer);
	        customer.getShippingAddress().setCustomer(customer);
	        
	        session.saveOrUpdate(customer);
	        session.saveOrUpdate(customer.getBillingAddress());
	        session.saveOrUpdate(customer.getShippingAddress());

	  Users newUser = new Users();
	        newUser.setUsername(customer.getUsername());
	        newUser.setPassword(customer.getPassword());
	        newUser.setEnabled(true);
	        newUser.setCustomerId(customer.getCutomerId());

	        Authorities newAuthorities = new Authorities();
	        newAuthorities.setUsername(customer.getUsername());
	        newAuthorities.setAuthority("ROLE_USER");

	        session.saveOrUpdate(newUser);
	        session.saveOrUpdate(newAuthorities);
	        session.saveOrUpdate(customer);

	        session.flush();
	    }
	  public Customer getCustomerById(int customerId){
	        Session session = sessionFactory.getCurrentSession();
	        return (Customer) session.get(Customer.class, customerId);
	    }
	    public List<Customer> getAllCustomers(){
	        Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from Customer");
	        List<Customer> customerList = query.list();

	        return customerList;
	    }
	    public Customer getCustomerByUsername(String username){
	        Session session = sessionFactory.getCurrentSession();
	        Query query = session.createQuery("from Customer where username = ?");
	        query.setString(0, username);

	        return (Customer) query.uniqueResult();
	    }     
	}