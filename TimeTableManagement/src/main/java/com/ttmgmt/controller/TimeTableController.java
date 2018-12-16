package com.ttmgmt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ttmgmt.domain.FacultyBean;
import com.ttmgmt.domain.SubjectBean;
import com.ttmgmt.domain.TimeTableBean;
import com.ttmgmt.domain.User;
import com.ttmgmt.service.FacultyService;
import com.ttmgmt.service.SubjectService;
import com.ttmgmt.service.TimeTableService;
import com.ttmgmt.validation.FacultyValidation;
import com.ttmgmt.validation.TimeTableValidation;

@Controller 
@RequestMapping(value="/timetable")
public class TimeTableController {

	@Autowired
	FacultyService facultyService;
	
	@Autowired
	 SubjectService subjectService;
	
	@Autowired
	TimeTableService ttService;
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	 public ModelAndView  listFacultees(ModelAndView  model) throws IOException{
		List<FacultyBean> listFaculty=facultyService.getAllFacultees();
		List<SubjectBean> listSubject=subjectService.getAllSubjects();
		
		
		model.addObject("listFaculty",listFaculty);
		model.addObject("listSubject",listSubject);
		model.setViewName("jsp/TimeTableView1");
		return model;
		
	}
	
	@RequestMapping(value ="/save" ,method=RequestMethod.POST)
	public String saveForm(ModelMap model,TimeTableBean ttb){


			ttService.saveTimeTable(ttb);
			
		    model.put("success","Data saved successfully");
	
			return "jsp/TimeTableView1";
		}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	 public ModelAndView  listTimeTable(ModelAndView  model) throws IOException{
		//List<TimeTableBean> listTimeTable=ttService.getTimeTable(); 
		List<TimeTableBean> facultyName=ttService.getFacultyName();
		//List<FacultyBean> listFaculty=facultyService.getAllFacultees();
		//List<SubjectBean> listSubject=subjectService.getAllSubjects();
		//model.addObject("listTimeTable",listTimeTable);
		model.addObject("facultyName",facultyName);
		//model.addObject("listFaculty",listFaculty);
		//model.addObject("listSubject",listSubject);
		model.setViewName("jsp/TimeTableList2");
		return model;
		
	}
	
	

		
	
}
