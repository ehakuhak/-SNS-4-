package dao;

import dto.UsersLog;


public interface UsersLogDao {
	public int insertLoginDate(int userNo);
	public int insertLogOutDate(int userNo);
	public UsersLog selectUsersLog(int userNo);
	
}
