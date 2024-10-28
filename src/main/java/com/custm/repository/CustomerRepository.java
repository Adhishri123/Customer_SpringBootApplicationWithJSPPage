package com.custm.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import com.custm.model.CustomerDetails;

@Repository
public interface CustomerRepository extends CrudRepository<CustomerDetails, Integer>{

	public CustomerDetails findAllByCustomerUserNameAndCustomerpassword(String cun,String cp);
	
	public CustomerDetails findAllByCustomerId(int cid);
}
