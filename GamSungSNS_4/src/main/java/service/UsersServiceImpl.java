package service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.UsersDao;
import dao.UsersLogDao;
import dto.Users;
import dto.UsersLog;

@Service("userService")
public class UsersServiceImpl implements UsersService {
	@Autowired
	UsersDao dao;
	
	@Autowired
	UsersLogDao uldao;
	
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
	public int updateUserService(Users user) {
		int c = dao.updateUser(user);
		return c;
	}

	@Override
	public boolean checkId(String id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Map<String, Object> loginUserService(String id, String pass) {
		//String result = dao.selectPassById(id);
		Users user = null;
		Map<String, Object> map = dao.loginUserById(id);
		//System.out.println(map);
		//System.out.println(map.get("user_no"));
		if(!pass.equals(map.get("password")) || map == null){
			throw new RuntimeException("id 또는 password 확인");
		}
		//System.out.println(map.get("user_no").toString());
		uldao.insertLoginDate(Integer.parseInt(map.get("user_no").toString()));
		return map;
	}

	@Override
	public List<Map<String, Object>> searchUsers(String key) {
		List<Map<String, Object>> list = dao.selectUsersBykeyWord(key);
		return list;
	}

	@Override
	public int logoutUserService(int userNo) {
		// TODO Auto-generated method stub
		return 0;
	}


}
