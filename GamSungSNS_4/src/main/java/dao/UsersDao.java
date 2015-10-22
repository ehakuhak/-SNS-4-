package dao;

import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.web.util.NestedServletException;

import dto.Users;


public interface UsersDao {
	
	public Map<String, Object> loginUserById(String id);
	public int registUser(Users user);
	public int selectIdByInputId(String id);
	public String selectPassById(String id);
	public int updateUser(Users user);
	public int deleteUser(String id);
	public List<Map<String, Object>> selectUsersBykeyWord(String key, int userNo);
	
}
