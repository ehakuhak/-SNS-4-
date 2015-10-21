package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public @ResponseBody String boardList(@RequestParam int rnum){
		Gson gson = new Gson();
		List<Board> list = new ArrayList<>();
		System.out.println(rnum);
		list = bservice.AllBoardListService(rnum);
	
		return gson.toJson(list);
	}
	
	@RequestMapping(value="/emotionBoardList", method=RequestMethod.POST, 
			produces="application/json;charset=UTF-8")
	public @ResponseBody String boardListByEmotionNo(@RequestParam int emotionNo, @RequestParam int rnum){
		Gson gson = new Gson();
		List<Board> list = new ArrayList<>();
		System.out.println(rnum);
		list = bservice.boardListByEmotion(emotionNo, rnum);
		
		return gson.toJson(list);
	}
	
	@RequestMapping(value="/readBoard", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String readBoard(@RequestParam int boardNo){
		
		Gson gson = new Gson();
		Board board = bservice.readBoard(boardNo);
		
		return gson.toJson(board);
	}
	
	@RequestMapping(value="/bestBoardE", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String bestBoardE(@RequestParam int emotionNo){
		
		Gson gson = new Gson();
		Board board = bservice.bestBoardByEmotion(emotionNo);
		
		return gson.toJson(board);
	}
	@RequestMapping(value="/bestBoard", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String bestBoard(@RequestParam int emotionNo){
		
		Gson gson = new Gson();
		Board board = bservice.bestBoard();
		
		return gson.toJson(board);
	}
}
