package com.custm.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.custm.model.CustomerDetails;
import com.custm.repository.CustomerRepository;
import com.custm.service.CustomerService;
@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	CustomerRepository customerrepository;
	
	@Override
	public void saveCustomer(CustomerDetails customerData) {
		
		customerrepository.save(customerData);
	}

	@Override
	public void loginCheck(String cun, String cp) {
		
		customerrepository.findAllByCustomerUserNameAndCustomerpassword(cun, cp);
	}

	@Override
	public Iterable<CustomerDetails> displayAllData() {
		
		return customerrepository.findAll();
	}

	@Override
	public CustomerDetails getSingleData(String cun, String cp) {
		
		return customerrepository.findAllByCustomerUserNameAndCustomerpassword(cun, cp);
	}

	@Override
	public void deleteData(int cid) {
		
		customerrepository.deleteById(cid);
	}

	@Override
	public CustomerDetails editData(int cid) {
		
		return customerrepository.findAllByCustomerId(cid);
	}

}
