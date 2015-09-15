package service;

import dto.Friend;

public interface FriendService {
	public int acquireFriend(Friend friend);
	public int acceptFriend(Friend friend);
	public int deleteFriend(Friend friend);
}
