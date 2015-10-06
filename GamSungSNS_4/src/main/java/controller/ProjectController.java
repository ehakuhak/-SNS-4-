package controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.UsersService;

@Controller
public class ProjectController {
	@Autowired
	UsersService service;
	private static Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@RequestMapping(value="loginBoard")
	public String goLogin(){
		//return "redirect:serviceMain";
		return "/main/serviceMain";
	}
	@RequestMapping(value="mainBoard")
	public String goMain(){
		//return "redirect:serviceMain";
		return "/indexTest";
	}
}
