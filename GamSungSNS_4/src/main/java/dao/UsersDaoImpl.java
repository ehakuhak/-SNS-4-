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
	
/*	@Autowired
	NamedParameterJdbcTemplate npJdbcTemp;*/
	
	@Override
	public Users loginUserById(String id) {
//		result = jdbcTemp.update(sql, )
		return null;
	}

	@Override
	public int registUser(Users user) {
		int result = -1;
		String sql = "insert into users(user_no, user_id, password, "
				+ "name, birth) values(seq_user_no.nextval,"
				+ "?,?,?,?)";
		result = jdbcTemp.update(sql, user.getUserId(), user.getPassword(), user.getName(), user.getBirth());
		System.out.println(user.toString() + " : in userdaoimpl");
		return result;
	}

	@Override
	public String selectIdByInputId(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String selectPassById(String id) {
		String result = null;
		String sql = "select password from users where user_id=?";
		result = jdbcTemp.queryForObject(sql, String.class, id);
		return result;
	}

	@Override
	public int updateUser(Users user) {
		// TODO Auto-generated method stub
		return 0;
	}

}
