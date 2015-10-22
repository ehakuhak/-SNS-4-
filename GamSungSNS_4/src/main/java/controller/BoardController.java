package controller;

import java.sql.SQLException;
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
import service.imageServiceImpl;

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
		//System.out.println(rnum);
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
	public @ResponseBody String bestBoard(){
		Gson gson = new Gson();
		Board board = null;
		try{
			board = bservice.bestBoard();
		//board.setImageList();
			//System.out.println(board.toString() + "!!!");
		
		}catch(RuntimeException e){
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
		
		return gson.toJson(board);
	}
	
	@RequestMapping(value="/updateRead", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String updateRead(@RequestParam int boardNo){
		Gson gson = new Gson();
		int result = bservice.updateReadCount(boardNo);
		return gson.toJson(result);
	}
	
	@RequestMapping(value="/updateRec", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String updateRec(@RequestParam int boardNo){
		Gson gson = new Gson();
		int result = bservice.updateRecommendCount(boardNo);
		return gson.toJson(result);
	}
	
	@RequestMapping(value="/updateRep", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String updateRep(@RequestParam int boardNo){
		Gson gson = new Gson();
		int result = bservice.updateReportCount(boardNo);
		return gson.toJson(result);
	}
	
}
