package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import dto.Users;

@Repository
public class UsersDaoImpl implements UsersDao {
	@Autowired
	JdbcTemplate jdbcTemp;
	
	@Autowired
	NamedParameterJdbcTemplate npJdbcTemp;
	
	@Override
	public Users loginUserById(String id) {
		//result = jdbcTemp.update(sql, )
		return null;
	}

	@Override
	public int RegistUser(Users User) {
		int result = -1;
		String sql = "insert into users() values()";
		result = jdbcTemp.update(sql, User.getUserId(), User.getPassword());
		
		return result;
	}

}
