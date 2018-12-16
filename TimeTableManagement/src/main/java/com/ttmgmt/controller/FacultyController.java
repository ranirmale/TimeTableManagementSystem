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
import com.ttmgmt.service.FacultyService;
import com.ttmgmt.validation.FacultyValidation;

@Controller 
@RequestMapping(value="/faculty")
public class FacultyController {
     
	@Autowired
	FacultyService facultyService;
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String showForm(ModelMap model){
		
		model.put("facultyData",new FacultyBean());
	
		return "jsp/FacultyView2";	
	
	}
	
	
	@RequestMapping(value ="/save" ,method=RequestMethod.POST)
	public String saveForm(ModelMap model,@ModelAttribute("facultyData")@Valid FacultyBean faculty,BindingResult br,HttpSession session){
		FacultyValidation facultyValidation=new FacultyValidation();
		facultyValidation.validate(facultyValidation, br);
		if(br.hasErrors()){
			return "jsp/FacultyView2";
		}else {
			facultyService.saveFaculty(faculty);
			session.setAttribute("faculty",faculty);
		    model.put("success","Data saved successfully");
	
			return "jsp/FacultyView2";
		}
		
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	 public ModelAndView  listFacultees(ModelAndView  model) throws IOException{
		List<FacultyBean> listFaculty=facultyService.getAllFacultees();
		model.addObject("listFaculty",listFaculty);
		model.setViewName("jsp/FacultyListView");
		return model;
		
	}
	
	
}
