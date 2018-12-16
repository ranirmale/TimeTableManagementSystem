package com.ttmgmt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ttmgmt.dao.SubjectDao;
import com.ttmgmt.domain.SubjectBean;


@Service
@Transactional
public class SubjectServiceImpl implements SubjectService {

	@Autowired
	private SubjectDao subjectDao;
	

	public void setSubjectDao(SubjectDao subjectDao) {
		this.subjectDao = subjectDao;
	}





	@Override
	public void saveSubject(SubjectBean subject) {
		subjectDao.saveSubject(subject);

	}


	@Override
	@Transactional
	public List<SubjectBean> getAllSubjects() {
		
		return subjectDao.getAllSubjects();
	}

}
