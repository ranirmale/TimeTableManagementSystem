package com.ttmgmt.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ttmgmt.dao.TimeTableDao;
import com.ttmgmt.domain.TimeTableBean;


@Service
@Transactional
public class TimeTableServiceImpl implements TimeTableService {

	@Autowired
	private TimeTableDao ttDao;
	
	
	public void setTtDao(TimeTableDao ttDao) {
		this.ttDao = ttDao;
	}



	@Override
	public void saveTimeTable(TimeTableBean ttb) {
		
      ttDao.saveTimeTable(ttb);
	}



	@Override
	@Transactional
	public List<TimeTableBean> getTimeTable() {
		
		return ttDao.getTimeTable();
		
	}



	@Override
	@Transactional
	public List<TimeTableBean> getFacultyName() {
	
		return ttDao.getFacultyName();
	}

}
