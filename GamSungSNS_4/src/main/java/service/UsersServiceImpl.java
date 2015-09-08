package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UsersDao;
import dto.Users;

@Service("userService")
public class UsersServiceImpl implements UsersService {

	@Autowired
	UsersDao dao;
	
	@Override
	public void RegistUserService(Users user) {
		dao.RegistUser(user);

	}

}
