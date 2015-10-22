package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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

import com.google.gson.Gson;

import dto.Board;
import dto.Users;
import service.BoardService;
import service.UsersService;

@Controller

public class UsersController {
	@Autowired
	UsersService service;
	@Autowired
	BoardService bservice;
	
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
			return "main/serviceMain";
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
	
	@RequestMapping(value="/login", method=RequestMethod.POST, 
			produces="application/json;charset=UTF-8")
	public @ResponseBody String login(@RequestParam String id, @RequestParam String pass, HttpSession session){
		
		Gson gson = new Gson();
		Map<String, Object> map = null;
		Map<String, String> resultMap = new HashMap();
		try{
			if((map=service.loginUserService(id, pass)) != null){
				session.setAttribute("loginNo", map.get("user_no"));
				session.setAttribute("user", map);
				resultMap.put("result", "success");
				//return "redirect:log";
			}else{
				resultMap.put("result", "fail");
				throw new RuntimeException();
			}
		}catch(RuntimeException e){
			System.out.println(e.getMessage() + "??");
		}
		return gson.toJson(resultMap);
		//return "error/error";
	}

	
	@RequestMapping(value="/log", method=RequestMethod.GET)
	public String loging(Model model){
		List<Board> list = bservice.AllBoardListService(1);
		model.addAttribute("boardList", list);
		return "indexTest";
	}
	//http://localhost:9090/GamSungSNS_4/pulpitrock.jpg
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
	
	@RequestMapping(value="/logout")
	public String logout(Model model, RedirectAttributes redir, HttpSession session){
		session.setAttribute("loginNo", null);
		session.setAttribute("user", null);
		return "redirect:out";
	}
	
	@RequestMapping(value="/out")
	public String out(Model model, RedirectAttributes redir, HttpSession session){
		//session.setAttribute("loginNo", null);
		//session.setAttribute("user", null);
		return "main/serviceMain";
	}
	
	@RequestMapping(value="/searchUser", method=RequestMethod.POST, 
			produces="application/json;charset=UTF-8")
	public @ResponseBody String searchUser(@RequestParam String key, @RequestParam int userNo){
		//System.out.println(key);
		Gson gson = new Gson();
		List<Map<String,Object>> list = new ArrayList<>();
		list = service.searchUsers(key, userNo);
		System.out.println(list.toString());
		return gson.toJson(list);
	}
	
	@ExceptionHandler()
	public String loginFailException(SQLException e){
		logger.error("error trace : {}",e);
		System.out.println("error trace : {} " + e);
		return "error/error";
	}
	
	@RequestMapping(value="/checkUsingId", method=RequestMethod.POST, 
			produces="application/json;charset=UTF-8")
	public @ResponseBody String confirmId(@RequestParam String email) throws SQLException{
		Gson gson = new Gson();
	//	boolean result = service.checkId(email);
		System.out.println(email);
		//System.out.println(email + " : " + result);
	/*	if(result){
			return email;
		}else{
			return "this_is_email_existed";
		}*/
		return gson.toJson("pleases");
		
	}
}
