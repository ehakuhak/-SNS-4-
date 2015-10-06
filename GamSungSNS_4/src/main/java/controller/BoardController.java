package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import dto.Board;
import service.BoardService;

@Controller
public class BoardController {
	@Autowired
	BoardService bservice;
	
	@RequestMapping(value="/allBoardList", method=RequestMethod.POST, 
			produces="application/json;charset=UTF-8")
	public @ResponseBody String boardList(){
		Gson gson = new Gson();
		List<Board> list = new ArrayList<>();
		list = bservice.AllBoardListService();
		
		return gson.toJson(list);
	}
}
