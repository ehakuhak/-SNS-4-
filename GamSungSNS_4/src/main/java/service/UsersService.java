package service;

import dto.Users;

public interface UsersService {
	public int registUserService(Users user);
	public boolean checkId(String id);
	public boolean loginUserService(String id, String pass);
	public int delectUserService(String id);
	
}
