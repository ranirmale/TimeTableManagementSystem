package com.ttmgmt.service;

import java.util.List;

import com.ttmgmt.domain.SubjectBean;

public interface SubjectService {
	
	public void saveSubject(SubjectBean subject);
	
	public List<SubjectBean> getAllSubjects();
}
