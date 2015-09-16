package dao;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dto.Friend;

@Repository
public class FriendDaoImpl implements FriendDao {
	public static Logger logger = LoggerFactory.getLogger(FriendDaoImpl.class);
	@Autowired
	JdbcTemplate jdbcTemp;
	
	@Override
	public int insertFriend(Friend friend) {
		// TODO Auto-generated method stub
		int result = -1;
		
		String sql = "insert into friend values(?,sysdate,?)";
		result = jdbcTemp.update(sql, friend.getFromUserNo(), friend.getToUserNo());
		
		return result;
	}

	@Override
	public int updateFriendToAcceptDay(Friend friend) {
		int result = -1;
		/*String sql = "update friend set accept_date = sysdate, friend_check = 1 "
				+ "where requir_user_no = ? and accept_user_no = ?";
		result = jdbcTemp.update(sql, friend.getRequireUser(), friend.getAcceptUser());*/
		return result;
	}

	@Override
	public int deleteFriend(Friend friend) {
		int result = -1;
		String sql = "delete from friend "
				+ "where (from_user_no = ? and to_user_no = ?) or (from_user_no = ? and to_user_no = ?)";
		result = jdbcTemp.update(sql, friend.getFromUserNo(), friend.getToUserNo(), friend.getToUserNo(), friend.getFromUserNo());
		return result;
	}

	@Override
	public int selectFriendList(String userId) {
		//String sql = "select * from friend where requir_user"
		return 0;
	}

	@Override
	public List<Map<String, Object>> selectFriendByToUserId(int userNo) {
		String sql = "select * from friend "
				+ "where to_user_no = ? and from_user_no not in "
				+ "(select to_user_no from friend where from_user_no = ?)";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, userNo, userNo);
		return list;
	}

	@Override
	public List<Map<String, Object>> selectFriendByFromUserId(int userNo) {
		String sql = "select * from friend "
				+ "where from_user_no = ? and to_user_no not in "
				+ "(select from_user_no from friend where to_user_no = ?)";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, userNo, userNo);
		return list;
	}

}
