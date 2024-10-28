package com.custm.service;

import com.custm.model.CustomerDetails;


public interface CustomerService {

	public void saveCustomer(CustomerDetails customerData);

	public void loginCheck(String cun, String cp);

	public Iterable<CustomerDetails> displayAllData();

	public CustomerDetails getSingleData(String cun, String cp);

	public void deleteData(int cid);

	public CustomerDetails editData(int cid);

}
