package usertest;

import static org.hamcrest.Matcher.*;
import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.Users;

public class UserTest {
	private static Logger logger = LoggerFactory.getLogger(UserTest.class);
	private Users users;
	@Before
	public void initUser(){
		users = new Users();
		users.setAdmin('0');
		users.setName("a");
		users.setPassword("a");
		users.setUserId("a");
	}
	@Test
	public void inserttest() {
		
	}

}
