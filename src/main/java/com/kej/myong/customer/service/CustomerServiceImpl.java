package com.kej.myong.customer.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kej.myong.customer.dao.CustomerDao;
import com.kej.myong.customer.vo.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerDao customerDao;
	
	@Autowired
	private SqlSessionTemplate sqlsession;
	
	@Override
	public Customer selectCustomerByNameAndPhone(Customer customer) {
		return customerDao.selectCustomerByNameAndPhone(sqlsession, customer);
	}

	@Override
	public void insertCustomer(Customer customer) {
		customerDao.insertCustomer(sqlsession, customer);
	}

}
