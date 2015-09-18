package service;

import java.util.List;
import java.util.Map;

import dto.Users;

public interface UsersService {
	public int registUserService(Users user);
	public boolean checkId(String id);
	public boolean loginUserService(String id, String pass);
	public int delectUserService(String id);
	public int updateUserService(Users user);
	
	//사용자 검색
	public List<Map<String, Object>> searchUsers(String key);
}
