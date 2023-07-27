package com.kej.myong.customer.service;

import com.kej.myong.customer.vo.Customer;

public interface CustomerService {

	Customer selectCustomerByNameAndPhone(Customer customer);

	void insertCustomer(Customer customer);

}
