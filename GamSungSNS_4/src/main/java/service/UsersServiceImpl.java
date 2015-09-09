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
	public int registUserService(Users user) {
	//	dao.registUser(user);
		int a = dao.registUser(user);
		System.out.println(a);
		return a;
	}

	@Override
	public boolean checkId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

}
