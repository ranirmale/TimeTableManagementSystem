package com.ttmgmt.service;

import java.util.List;

import com.ttmgmt.domain.FacultyBean;

public interface FacultyService {

	public void saveFaculty(FacultyBean faculty);
	
	public List<FacultyBean> getAllFacultees();
}
