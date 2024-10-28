package com.custm.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Data
public class CustomerDetails {

	@Id
	private int customerId;
	private String customerName;
	private String customerUserName;
	private String customerpassword;
	private long customerMobileNo;
	
}
