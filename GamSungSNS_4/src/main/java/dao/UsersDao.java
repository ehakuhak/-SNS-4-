package dao;

import java.util.List;
import java.util.Map;

import dto.Users;


public interface UsersDao {
	
	public Map<String, Object> loginUserById(String id);
	public int registUser(Users user);
	public String selectIdByInputId(String id);
	public String selectPassById(String id);
	public int updateUser(Users user);
	public int deleteUser(String id);
	public List<Map<String, Object>> selectUsersBykeyWord(String key);
	
}
