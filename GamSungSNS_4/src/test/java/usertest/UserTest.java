package usertest;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.hamcrest.CoreMatchers.nullValue;
import static org.junit.Assert.*;

import javax.servlet.ServletException;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import service.UsersService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring/application-config.xml")
public class UserTest {
	@Autowired
	UsersService uservice;
	
	@Test
	public void test() throws ServletException {
		//assertThat(uservice.loginUserService("hoEEEseo@naver.com", "123") ,is(not(nullValue())));
		System.out.println(uservice.searchUsers("kyle").toString());
	}

}
