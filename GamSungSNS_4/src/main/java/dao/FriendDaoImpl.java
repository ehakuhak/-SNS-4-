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
		String sql = "insert into friend values(?,sysdate,?)";
		result = jdbcTemp.update(sql, friend.getToUserNo(), friend.getFromUserNo());
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
	public List<Map<String, Object>> selectFriendList(int userNo) {
		String sql = "select ff.*, u.name as name, u.user_id as id from friend ff, users u "
				+ "where to_user_no in (select f.from_user_no from friend f where f.to_user_no = ?) "
				+ "and from_user_no = ? and ff.to_user_no = u.user_no";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, userNo, userNo);
		return list;
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

	@Override
	public int selectCountFriend(int userNo) {
		String sql = "select count(*) from friend "
				+ "where to_user_no in (select f.from_user_no from friend f where f.to_user_no = ?) "
				+ "and from_user_no = ?";
		int result = jdbcTemp.queryForInt(sql, userNo, userNo);
		return result;
	}

	@Override
	public Map<String,Object> selectFriendListAndReqList(int userNo) {
		String sql = "select * from "
				+ "(select count(*) as frelist from friend where to_user_no in "
				+ "(select f.from_user_no from friend f where f.to_user_no = ?) and from_user_no=?), "
				+ "(select count(*) as req from friend where to_user_no = ? and from_user_no not in "
				+ "(select to_user_no from friend where from_user_no  = ?))";
		Map<String,Object> map = jdbcTemp.queryForMap(sql, userNo, userNo, userNo, userNo);
		return map;
	}

}
