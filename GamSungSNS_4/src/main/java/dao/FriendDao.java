package dao;

import dto.Friend;

public interface FriendDao {
	public int insertFriend(Friend friend);
	public int updateFriendToAcceptDay(Friend friend);
	public int deleteFriend(Friend friend);
}
