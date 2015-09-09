package controller;

import org.jboss.logging.Param;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping(value="/regist", method=RequestMethod.GET)
	public String registUser(Model model){
		return "/registForm";
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
		return "redirect:main2";
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
	@RequestMapping(value="main2", method=RequestMethod.GET)
	public String view2(Model model, @RequestParam("confirm") int confirm){
		//redir.addFlashAttribute(model);
		model.addAttribute("confirm", confirm);
		return "main";
					
	}
}
