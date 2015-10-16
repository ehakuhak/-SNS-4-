package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import dto.Board;
import dto.Reply;
import service.ReplyService;

@Controller
public class ReplyController {
	@Autowired
	ReplyService rservice;
	
	@RequestMapping(value="/writeReply", method=RequestMethod.POST, produces="application/json;charset=UTF-8")
	public @ResponseBody String writeReply(@RequestParam String replyContent, @RequestParam int boardBoardNo, @RequestParam int usersUserNo){
	
		Reply reply = new Reply();
		reply.setBoardBoardNo(boardBoardNo);
		reply.setUsersUserNo(usersUserNo);
		reply.setReplyContent(replyContent);
		Gson gson = new Gson();
		int result = rservice.writeReply(reply);
		if(result > 0){
			List<Reply> list = rservice.replyListByBoardNo(boardBoardNo);
			return gson.toJson(list);
		}
		return null;
	}
}
