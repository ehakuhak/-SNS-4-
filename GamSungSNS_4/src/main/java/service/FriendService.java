package service;

import java.util.List;
import java.util.Map;

import dto.Friend;

public interface FriendService {
	public int acquireFriend(Friend friend);
	public int acceptFriend(Friend friend);
	public int deleteFriend(Friend friend);
	public List<Map<String, Object>> friendList(int userNo);
	public List<Map<String, Object>> requestedFriendList(int userNo);
	public List<Map<String, Object>> requireFriendList(int userNo);
}
