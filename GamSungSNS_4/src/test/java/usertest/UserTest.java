package usertest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.hamcrest.CoreMatchers.nullValue;
import static org.junit.Assert.assertThat;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.UsersDao;
import service.UsersService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring/application-config.xml")
public class UserTest {
	private static Logger logger = LoggerFactory.getLogger(UserTest.class);
	@Autowired
	UsersDao dao;
	@Autowired
	UsersService service;
	
	@Test
	public void test() {
	/*	assertThat(dao, is(not(nullValue())));
		logger.trace("dao bean ok? : {}", dao);
		assertThat(service, is(not(nullValue())));
		logger.trace("service bean ok? : {}", service);*/
		
		assertThat(service.loginUserService("hoseo@naver.com", "123") ,is(true));

	}

}
