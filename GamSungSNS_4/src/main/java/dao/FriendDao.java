package dao;

import java.util.List;
import java.util.Map;

import dto.Friend;

public interface FriendDao {
	public int insertFriend(Friend friend);
	public int updateFriendToAcceptDay(Friend friend);
	public int deleteFriend(Friend friend);
	public List<Map<String, Object>> selectFriendList(int userNo);
	//신청 받은 친구 목록
	public List<Map<String, Object>> selectFriendByToUserId(int userNo);
	//신청 한 친구 목록
	public List<Map<String, Object>> selectFriendByFromUserId(int userNo);
	//친구 수
	public int selectCountFriend(int userNo);
	
	//친구 수, 친구 요청 수 동시 구하기
	public Map<String,Object> selectFriendListAndReqList(int userNo);
}
