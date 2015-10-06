package service;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FriendDao;
import dto.Friend;

@Service("friendService")
public class FriendServiceImpl implements FriendService {
	public static Logger logger = LoggerFactory.getLogger(FriendServiceImpl.class);
	
	@Autowired
	FriendDao dao;
	
	@Override
	public int acquireFriend(Friend friend) {
		int result = -1;
		result = dao.insertFriend(friend);
		return result;
	}

	@Override
	public int acceptFriend(Friend friend) {
		int result = -1;
		result = dao.updateFriendToAcceptDay(friend);
		return result;
	}

	@Override
	public int deleteFriend(Friend friend) {
		int result = -1;
		result = dao.deleteFriend(friend);
		return result;
	}

	@Override
	public List<Map<String, Object>> requestedFriendList(int userNo) {
		List<Map<String, Object>> list = dao.selectFriendByToUserId(userNo);
		return list;
	}

	@Override
	public List<Map<String, Object>> requireFriendList(int userNo) {
		List<Map<String, Object>> list = dao.selectFriendByFromUserId(userNo);
		return list;
	}

	@Override
	public List<Map<String, Object>> friendList(int userNo) {
		List<Map<String, Object>> list = dao.selectFriendList(userNo);
		return list;
	}

	@Override
	public int friendCount(int userNo) {
		int result = dao.selectCountFriend(userNo);
		return result;
	}

}
