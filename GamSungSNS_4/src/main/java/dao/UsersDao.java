package dao;

import org.springframework.stereotype.Component;

import dto.Users;

@Component
public interface UsersDao {
	
	public Users loginUserById(String id);
	public int RegistUser(Users User);
}
