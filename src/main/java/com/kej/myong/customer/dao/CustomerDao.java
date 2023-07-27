package com.kej.myong.customer.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kej.myong.customer.vo.Customer;

@Repository
public class CustomerDao {

	public Customer selectCustomerByNameAndPhone(SqlSessionTemplate sqlsession, Customer customer) {
		
		return sqlsession.selectOne("customerMapper.selectCustomerByNameAndPhone", customer);
	}

	public void insertCustomer(SqlSessionTemplate sqlsession, Customer customer) {
		sqlsession.insert("customerMapper.insertCustomer", customer);
	}

}
