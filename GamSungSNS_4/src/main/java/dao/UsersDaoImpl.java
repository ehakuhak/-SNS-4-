package dao;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.web.util.NestedServletException;

import dto.Users;

@Repository
public class UsersDaoImpl implements UsersDao {
	@Autowired
	JdbcTemplate jdbcTemp;
	
/*	@Autowired
	NamedParameterJdbcTemplate npJdbcTemp;*/
	
	@Override
	public Map<String, Object> loginUserById(String id) {
		
		try{
			String sql = "select * from users where user_id = ?";
			
			Map<String, Object> map = jdbcTemp.queryForMap(sql,id);
			
			return map;
		}catch(EmptyResultDataAccessException e){
			return null;
		}
		
		
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
	public int deleteUser(String id) {
		int result = -1;
		String sql = "delete from users where user_id=?";
		result= jdbcTemp.update(sql, id);
		return result;
	}

	@Override
	public int selectIdByInputId(String id) {
		String sql = "select user_id from users where user_id = ?";
		int result = -1;
		result = jdbcTemp.queryForObject(sql, Integer.class, id);
		
		return result;
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
		int result = -1;
		String sql = "update users set password=?, name=?, birth=?, profilepath=? where user_id=?";
		result= jdbcTemp.update(sql, user.getPassword(), user.getName(), user.getBirth(), user.getProfilePath(), user.getUserId());
		return result;
	}

	@Override
	public List<Map<String, Object>> selectUsersBykeyWord(String key, int userNo) {	
		String sql = "select * from users where ( user_id like ? or name like ? ) and user_no != ?";
		List<Map<String,Object>> list = jdbcTemp.queryForList(sql, "%"+key+"%", "%"+key+"%" , userNo);
		System.out.println(list.toString());
		return list;
	}
	@Override
	public int selectUserNoByUserId(String userId) {
		String sql = "select user_no from users where user_id = ?";
		int result = jdbcTemp.queryForObject(sql, Integer.class, userId);
		return result;
	}

	@Override
	public int updateProfile(String filename, int userNo) {
		String sql = "update users set profilepath = ? where user_no = ?";
		int result = jdbcTemp.update(sql, filename, userNo);
		return result;
	}

}
