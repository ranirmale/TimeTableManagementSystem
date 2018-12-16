package com.ttmgmt.dao;

import java.util.List;

import com.ttmgmt.domain.TimeTableBean;

public interface TimeTableDao {

   public void saveTimeTable(TimeTableBean ttb);

   public List<TimeTableBean> getTimeTable();
   
   public List<TimeTableBean> getFacultyName();

}
