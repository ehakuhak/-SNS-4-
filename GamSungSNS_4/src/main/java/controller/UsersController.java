package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;
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
	/*
	@RequestMapping(value="/regist", method=RequestMethod.GET)
	public String registUser(Model model){
		return "/registForm";
	}*/
	
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
	public @ResponseBody String registForm(Model model, HttpServletRequest request, HttpServletResponse response
			, RedirectAttributes redir) throws SQLException{
		logger.trace("post regist");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String pwd2 = request.getParameter("pwd2");
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
	//	System.out.println(email + pwd+ pwd + name + birth);
		Users user = new Users(email, pwd, name, birth);
		
		int a = service.registUserService(user);
		
		if(a >= 1){
			return "confirmJoin";
		}else{
			return "error/error";
		}
		//return null;
		
		//model.addAttribute("confirm", a);
		/*redir.addAttribute("confirm", a);*/
		
		/*if(a >= 1){
			//성공
			redir.addFlashAttribute("confirm", a);
			//return "redirect:confirmJoin";
			return "success";
		}else{
			//실패
			//이유로를 에러의 발생으로 인해 에러 페이지로 넘김 -  다시 시도해 주세요
			return "fail";
		}*/
		
	}
	
	@RequestMapping(value="confirmJoin", method=RequestMethod.GET)
	public String view2(Model model){
		//redir.addFlashAttribute(model);
		//model.addAttribute("confirm", confirm);
		return "main/serviceMain";
					
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String login(@RequestParam("email") String id, @RequestParam("pwd") String pass, HttpSession session){
		Map<String, Object> map = null;
		try{
			if((map=service.loginUserService(id, pass)) != null){
				session.setAttribute("loginNo", map.get("user_no"));
				session.setAttribute("user", map);
				return "loginPage";
			}else{
				throw new RuntimeException();
			}
		}catch(RuntimeException e){
			System.out.println(e.getMessage() + "??");
		}
		
		return "error/error";
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
	public String loginFailException(SQLException e){
		logger.error("error trace : {}",e);
		System.out.println("error trace : {} " + e);
		return "error/error";
	}
}
