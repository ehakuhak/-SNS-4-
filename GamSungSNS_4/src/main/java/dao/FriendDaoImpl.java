package dao;

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
		
		String sql = "insert into friend(requir_user_no, requir_date, accept_user_no) values(?, sysdate, ?)";
		result = jdbcTemp.update(sql, friend.getRequireUser(), friend.getAcceptUser());
		
		return result;
	}

	@Override
	public int updateFriendToAcceptDay(Friend friend) {
		int result = -1;
		String sql = "update friend set accept_date = sysdate, friend_check = 1 "
				+ "where requir_user_no = ? and accept_user_no = ?";
		result = jdbcTemp.update(sql, friend.getRequireUser(), friend.getAcceptUser());
		return result;
	}

	@Override
	public int deleteFriend(Friend friend) {
		int result = -1;
		String sql = "delete from friend where requir_user_no=? and accept_user_no = ? and friend_check = 1";
		result = jdbcTemp.update(sql, friend.getRequireUser(), friend.getAcceptUser());
		return result;
	}

	@Override
	public int selectFriendList(String userId) {
		//String sql = "select * from friend where requir_user"
		return 0;
	}

}
