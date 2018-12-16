package com.ttmgmt.dao;

import java.util.List;

import com.ttmgmt.domain.FacultyBean;

public interface FacultyDao {

	public void saveFaculty(FacultyBean faculty);
	
	public List<FacultyBean> getAllFacultees();
	
}
