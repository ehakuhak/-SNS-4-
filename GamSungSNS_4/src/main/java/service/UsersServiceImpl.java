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
		System.out.println("usersuseruseru"+user);
		System.out.println(a);
		return a;
	}
	
	@Override
	public int delectUserService(String id) {
		int b = dao.deleteUser(id);
		return b;
	}

	@Override
	public boolean checkId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean loginUserService(String id, String pass) {
		String result = dao.selectPassById(id);
		if(pass.equals(result)){
			return true;
		}
		
		return false;
	}


}
