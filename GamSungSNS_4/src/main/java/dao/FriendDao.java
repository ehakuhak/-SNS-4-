package dao;

import dto.Friend;

public interface FriendDao {
	public int insertFriend(Friend friend);
	public int updateFriendToAcceptDay(Friend friend);
	public int deleteFriend(Friend friend);
	public int selectFriendList(String userId);
	//신청 받은 친구 목록
	//신청 한 친구 목록
}
