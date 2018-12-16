package com.ttmgmt.service;

import java.util.List;

import com.ttmgmt.domain.TimeTableBean;

public interface TimeTableService {

	public void saveTimeTable(TimeTableBean ttb);
	
	public List<TimeTableBean> getTimeTable();
	
	public List<TimeTableBean> getFacultyName();
}
