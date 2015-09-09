package service;

import dto.Users;

public interface UsersService {
	public int registUserService(Users user);
	public boolean checkId(String id);
}
