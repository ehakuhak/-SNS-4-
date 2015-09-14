package dao;

import org.springframework.jdbc.core.JdbcTemplate;

import dto.Friend;

public class FriendDaoImpl implements FriendDao {
	
	JdbcTemplate jdbctemp;
	
	@Override
	public int insertFriend(Friend friend) {
		// TODO Auto-generated method stub
		int result = -1;
		String sql = "insert into friend(_no, requir_user, requir_date, accept_user) "
				+ "values(seq_friend_no.nextval, ?, sysdate, ?)";
		result = jdbctemp.update(sql, friend.getRequireUser(), friend.getAcceptUser());
		
		return result;
	}

	@Override
	public int updateFriendToAcceptDay(Friend friend) {
		int result = -1;
		String sql = "update friend set accept_date = sysdate, friend_check = 1 "
				+ "where requir_user = ? and accept_user = ?";
		result = jdbctemp.update(sql, friend.getRequireUser(), friend.getAcceptUser());
		return result;
	}

	@Override
	public int deleteFriend(Friend friend) {
		int result = -1;
		String sql = "delete from friend where requir_user=? and accept_user = ? and friend_check = 1";
		result = jdbctemp.update(sql, 1, friend.getRequireUser(), friend.getAcceptUser());
		return result;
	}

}
