package dao;

import dto.Users;


public interface UsersDao {
	
	public Users loginUserById(String id);
	public int registUser(Users user);
	public String selectIdByInputId(String id);
}
