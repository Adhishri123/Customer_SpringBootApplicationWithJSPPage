package com.custm.controller;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.custm.model.CustomerDetails;
import com.custm.service.CustomerService;

@Controller
public class CustomerController {
	
	@Autowired
	CustomerService customerservice;

	@RequestMapping("/")
	public String preLogin() {
        return "login";
	}
	
	@RequestMapping("/reg")
	public String preRegister() {
        return "register";
	}
	
	@RequestMapping("/register")
	public String registerCustomer(@ModelAttribute CustomerDetails customerData) {
		customerservice.saveCustomer(customerData);
		return "login";
	}
	
	@RequestMapping("/log")
	public String loginCheck(@RequestParam("customerUserName") String cun,@RequestParam("customerpassword") String cp, Model m) {
		if(cun.equalsIgnoreCase("Admin1") && cp.equalsIgnoreCase("Admin@1")) {
			customerservice.loginCheck(cun,cp);
			Iterable<CustomerDetails> cl = customerservice.displayAllData();
			m.addAttribute("data", cl);
			return "Success";
		}else {
			CustomerDetails c = customerservice.getSingleData(cun,cp);
			if(c!=null) {
				List<CustomerDetails> cll = new ArrayList<>();
				    cll.add(c);
				    m.addAttribute("data",cll);
				return "Success";
			}else {
				return "login";
			}
			
		}
	}
	
	@RequestMapping("/edit")
	public String editCustomerData(@RequestParam("customerId") int cid,Model m) {
		CustomerDetails c = customerservice.editData(cid);
		m.addAttribute("data", c);
		    return "edit";
	}
	
	@RequestMapping("/update")
	public String updateCustomerData(@ModelAttribute CustomerDetails customerData,Model m) {
		customerservice.saveCustomer(customerData);
		Iterable<CustomerDetails> sl = customerservice.displayAllData();
		     m.addAttribute("data", sl);
		     return "Success";
	}
	
	@RequestMapping("/delete")
	public String deleteCustomerData(@RequestParam("customerId") int cid,Model m)
	{
		customerservice.deleteData(cid);
		Iterable<CustomerDetails> cl = customerservice.displayAllData();
		m.addAttribute("data", cl);
		return "Success";
	}
}
