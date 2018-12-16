package com.ttmgmt.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.ttmgmt.domain.User;

public class UserValidation implements Validator {
	
	public  boolean supports(Class<?> arg0) {
		
		return User.class.equals(arg0);
	}
	
	@Override
	public void validate(Object arg0,Errors arg1) {
		
	}

}
