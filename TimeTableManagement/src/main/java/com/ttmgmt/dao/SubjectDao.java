package com.ttmgmt.dao;

import java.util.List;

import com.ttmgmt.domain.SubjectBean;

public interface SubjectDao {
	
	public void saveSubject(SubjectBean subject);
  
	public List<SubjectBean> getAllSubjects();
}
