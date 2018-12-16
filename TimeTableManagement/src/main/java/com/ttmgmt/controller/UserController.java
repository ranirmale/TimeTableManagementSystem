package com.ttmgmt.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ttmgmt.domain.User;
import com.ttmgmt.service.HomeService;
import com.ttmgmt.validation.UserValidation;

@Controller 
@RequestMapping(value="/user")
public class UserController {
	
	@Autowired
	HomeService homeService;

	
	@RequestMapping(value="/home",method=RequestMethod.GET)
	public String home1(Model model){
	
		return "home";	
	
	}
	
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String showForm(ModelMap model){
		
		model.put("userData",new User());
	
		return "register";	
	
	}
	@RequestMapping(value ="/register" ,method=RequestMethod.POST)
	public String saveForm(ModelMap model,@ModelAttribute("userData")@Valid User user,BindingResult br,HttpSession session){
		UserValidation userValidation=new UserValidation();
		userValidation.validate(userValidation, br);
		if(br.hasErrors()){
			return "register";
		}else {
			homeService.saveUser(user);
		
			session.setAttribute("user",user);
			return "redirect:regsuccess";
		}
		
	}
	
	
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String showLogin(ModelMap model,HttpSession session) {
		if(session.getAttribute("user")==null) {
			model.put("userData", new User());
			return "login";
		}else {
			return "redirect:success";
		}
		
	}
	
	
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String doLogin(ModelMap model,@ModelAttribute("userData") User user, HttpSession session ){
		
		if(user.getMailId()!=null && user.getPassword()!=null && session.getAttribute("user")==null) {
			user=homeService.loginUser(user);
			if(user!=null) {
				session.setAttribute("user", user);
				return "redirect:success";
			}else{
				model.put("failed","Login Failed.");
				return "login";
			}
		}else {
			return "redirect:success";
		}
		
	}

	@RequestMapping(value="/logout",method=RequestMethod.GET)
	 public String logOut(ModelMap model, HttpSession session) {
		session.removeAttribute("user");
		return "redirect:login";
		
	}
	
	@RequestMapping(value="/success",method=RequestMethod.GET)
	 public String showSuccess(ModelMap model) {
		model.put("Welcome", new User());
		return "jsp/Welcome";
		
	}
	
	@RequestMapping(value="/regsuccess",method=RequestMethod.GET)
	 public String regSuccess(ModelMap model) {
		model.put("registerSuccess", new User());
		return "registerSuccess";
		
	}
	

}
