package service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

import dto.Users;

public interface UsersService {
	public int registUserService(Users user);
	public boolean checkId(String id);
	public Map<String, Object> loginUserService(String id, String pass);
	public int logoutUserService(int userNo);
	public int delectUserService(String id);
	public int updateUserService(Users user);
	
	//사용자 검색
	public List<Map<String, Object>> searchUsers(String key, int userNo);
	
	public int selectUserNoByUserId(String userId);
	
	public int updateProfile(String filename, int userNo);
	
	public String selectPassword(String userId, String name, Date birth);
}
