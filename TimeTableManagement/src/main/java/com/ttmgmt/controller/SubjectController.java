package com.ttmgmt.controller;

import java.io.IOException;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ttmgmt.domain.SubjectBean;
import com.ttmgmt.service.SubjectService;
import com.ttmgmt.validation.SubjectValidation;

@Controller 
@RequestMapping(value="/subject")
public class SubjectController {

	
	@Autowired
	 SubjectService subjectService;
	
	@RequestMapping(value="/add",method=RequestMethod.GET)
	public String showForm(ModelMap model){
		
		model.put("subjectData",new SubjectBean());
	
		return "jsp/SubjectView1";	
	
	}
	
	@RequestMapping(value ="/save" ,method=RequestMethod.POST)
	public String saveForm(ModelMap model,@ModelAttribute("subjectData")@Valid SubjectBean subject,BindingResult br){
		SubjectValidation subjectValidation=new SubjectValidation();
		subjectValidation.validate(subjectValidation, br);
		if(br.hasErrors()){
			return "jsp/SubjectView1";
		}else {
			subjectService.saveSubject(subject);
		    model.put("success","Data saved successfully");
	
			return "jsp/SubjectView1";
		}
		
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET)
	 public ModelAndView  listSubjects(ModelAndView  model) throws IOException{
		List<SubjectBean> listSubject=subjectService.getAllSubjects();
		model.addObject("listSubject",listSubject);
		model.setViewName("jsp/SubjectListView");
		return model;
		
	}
	
	
	
}
