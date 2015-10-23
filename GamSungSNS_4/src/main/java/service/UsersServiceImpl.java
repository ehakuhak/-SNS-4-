package service;

import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;

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
		if(a < 1){
			throw new RuntimeException("생성중 에러가 발생했습니다 다시 실행해 주세요");
		}else{
			return a;
		}
	}
	
	@Override
	public int delectUserService(String id) {
		int b = dao.deleteUser(id);
		return b;
	}
	
	@Override
	public int updateUserService(Users user) {
		int result = dao.updateUser(user);
		return result;
	}

	@Override
	public boolean checkId(String id) {
		int b = dao.selectIdByInputId(id);
		
		if(b == 0){
			return true;
		}else if(b >= 1){
			return false;
		}else{
			return false;
		}
		
	}

	@Override
	public Map<String, Object> loginUserService(String id, String pass){
		
		Map<String, Object> map;
		if((map = dao.loginUserById(id)) == null || !pass.equals(map.get("password"))){
			throw new RuntimeException("id 또는 password 확인");
		}
		/*if(!pass.equals(map.get("password")) || map == null){
			throw new RuntimeException("id 또는 password 확인");
		}*/
		//System.out.println(map.get("user_no").toString());
		uldao.insertLoginDate(Integer.parseInt(map.get("user_no").toString()));
		return map;
	}

	@Override
	public List<Map<String, Object>> searchUsers(String key, int userNo) {
		List<Map<String, Object>> list = dao.selectUsersBykeyWord(key, userNo);
		
		return list;
	}

	@Override
	public int logoutUserService(int userNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectUserNoByUserId(String userId) {
		int result = dao.selectUserNoByUserId(userId);
		return result;
	}

	@Override
	public int updateProfile(String filename, int userNo) {
		int result = dao.updateProfile(filename, userNo);
		return result;
	}

	@Override
	public String selectPassword(String userId, String name, Date birth) {
		String password = dao.selectPassword(userId, name, birth);
		return password;
	}


}
