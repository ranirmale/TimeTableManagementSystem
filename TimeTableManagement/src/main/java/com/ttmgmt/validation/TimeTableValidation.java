package com.ttmgmt.validation;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import com.ttmgmt.domain.TimeTableBean;

public class TimeTableValidation implements Validator {

	@Override
	public boolean supports(Class<?> arg0) {
		
		return TimeTableBean.class.equals(arg0) ;
		
	}

	@Override
	public void validate(Object arg0, Errors arg1) {
	
	}

}
