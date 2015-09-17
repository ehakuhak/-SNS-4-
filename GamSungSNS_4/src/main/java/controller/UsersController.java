package controller;

import org.jboss.logging.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dto.Users;
import service.UsersService;

@Controller

public class UsersController {
	@Autowired
	UsersService service;
	private static Logger logger = LoggerFactory.getLogger(UsersController.class);
	
	@RequestMapping(value="go")
	public String go(@RequestParam("page") String page){
		return page;
	}
	
	@RequestMapping(value="/regist", method=RequestMethod.GET)
	public String registUser(Model model){
		return "/registForm";
	}
	
	@RequestMapping(value="/main", method=RequestMethod.GET)
	public String main(Model model){
		return "/main";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join(Model model){
		return "/join";
	}
	
	@RequestMapping(value="/findPass", method=RequestMethod.GET)
	public String findPass(Model model){
		return "/findPass";
	}
	
	@RequestMapping(value="/loging", method=RequestMethod.GET)
	public String loging(Model model){
		return "/loging";
	}
	
	@RequestMapping(value="/regist", method=RequestMethod.POST)
	public String registForm(Model model, @ModelAttribute Users user
			, RedirectAttributes redir){
		logger.trace("post regist");
		logger.trace(user.toString());
		System.out.println(user.toString());
		int a = service.registUserService(user);
		//model.addAttribute("confirm", a);
		redir.addAttribute("confirm", a);
		//redir.addFlashAttribute("confirm", a);
		return "redirect:confirmJoin";
	}
	
	@RequestMapping(value="confirmJoin", method=RequestMethod.GET)
	public String view2(Model model, @RequestParam("confirm") int confirm){
		//redir.addFlashAttribute(model);
		model.addAttribute("confirm", confirm);
		return "main";
					
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(@RequestParam("id") String id, @RequestParam("pass") String pass){
		if(service.loginUserService(id, pass)){
			return "loginPage";
		}else{
			//예외처리
			return "";
		}
	}

	@RequestMapping(value="/view", method=RequestMethod.GET)
	public String view(@RequestParam("target") String param, Model model, RedirectAttributes rdir){
		logger.trace("view ");
		if(param.equals("done")){
			model.addAttribute("login", "unneed");
			rdir.addFlashAttribute(model);
			return "redirect:main2";
		}else{
			model.addAttribute("login", "need");
			rdir.addFlashAttribute(model);
			//return "redirect:main2";
			return "main2";
		}
			
	}
	
	@ExceptionHandler()
	public String loginFailException(){
		return "error/error";
	}
}
