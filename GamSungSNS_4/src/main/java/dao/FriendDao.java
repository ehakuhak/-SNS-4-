package dao;

import java.util.List;
import java.util.Map;

import dto.Friend;

public interface FriendDao {
	public int insertFriend(Friend friend);
	public int updateFriendToAcceptDay(Friend friend);
	public int deleteFriend(Friend friend);
	public int selectFriendList(String userId);
	//신청 받은 친구 목록
	public List<Map<String, Object>> selectFriendByToUserNo(int toUserNo);
	//신청 한 친구 목록
	public List<Friend> selectFriendByFromUserNo(int fromUserNo);
}
