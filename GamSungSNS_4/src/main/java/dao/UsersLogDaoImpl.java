package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dto.UsersLog;

@Repository
public class UsersLogDaoImpl implements UsersLogDao {
	@Autowired
	JdbcTemplate jdbcTemp;
	
	@Override
	public int insertLoginDate(int userNo) {
		String sql = "insert into userslog(user_no, login_date) values(?, sysdate)";
		int result = jdbcTemp.update(sql, userNo);
		return result;
	}

	@Override
	public int insertLogOutDate(int userNo) {
		String sql = "insert into userslog(user_no, logout_date) values(?, sysdate)";
		int result = jdbcTemp.update(sql, userNo);
		return result;
	}

	@Override
	public UsersLog selectUsersLog(int userNo) {
		String sql = "select * from ";
		return null;
	}

}
