package controller;

import java.util.ArrayList;
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
import service.FriendService;

@Controller
public class FriendController {
	@Autowired
	FriendService fservice;

	@RequestMapping(value = "/friendList", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String boardListByEmotionNo(@RequestParam int userNo) {

		Gson gson = new Gson();
		List<Map<String, Object>> list = new ArrayList<>();
		list = fservice.friendList(userNo);

		return gson.toJson(list);
	}

	@RequestMapping(value = "/friendCount", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
	public @ResponseBody String friendCount(@RequestParam int userNo) {

		Gson gson = new Gson();
		//result = fservice.friendCount(userNo);
		Map<String,Object> map = fservice.selectFriendCountAndRequireCount(userNo);
		return gson.toJson(map);
	}
}
