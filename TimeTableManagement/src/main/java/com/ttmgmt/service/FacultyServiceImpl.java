package com.ttmgmt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ttmgmt.dao.FacultyDao;
import com.ttmgmt.domain.FacultyBean;

@Service
@Transactional
public class FacultyServiceImpl implements FacultyService {

	@Autowired
	private FacultyDao facultyDao;
	
	
	public void setFacultyDao(FacultyDao facultyDao) {
		this.facultyDao = facultyDao;
	}



	@Override
	public void saveFaculty(FacultyBean faculty) {
		
       facultyDao.saveFaculty(faculty);
	}



	@Override
	@Transactional
	public List<FacultyBean> getAllFacultees() {
		
		return facultyDao.getAllFacultees();
	}

}
