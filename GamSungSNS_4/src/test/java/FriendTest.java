import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dto.Friend;
import service.FriendService;
import service.FriendServiceImpl;
import static org.hamcrest.CoreMatchers.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring/application-config.xml")
public class FriendTest {
	private static Logger logger = LoggerFactory.getLogger(FriendTest.class);
	
	@Autowired
	FriendService service;
	@Test
	public void insertFriend() {
		Friend friend = new Friend(23,4);
		int result = -1;
		result = service.acquireFriend(friend);
		logger.trace("result : ", result);
		assertThat(result, is(1));
	}
	@Test
	public void acceptFrined(){
		Friend friend = new Friend(4,23);
		int result = -1;
		result = service.acceptFriend(friend);
		assertThat(result, is(1));
	}
	@Test
	public void deleteFriend(){
		Friend friend = new Friend(4,21);
		int result = -1;
		result = service.deleteFriend(friend);
		assertThat(result, is(1));
	}
	@Test
	public void requestedFriendTest(){
		List<Map<String, Object>> list = new ArrayList<>();
		list = service.requestedFriendList(4);
		logger.trace("requested list : {}", list);
		System.out.println(list);
		assertThat(list, is(notNullValue()));
	}
	@Test
	public void requireFriendTest(){
		List<Friend> list = service.requireFriendList(21);
		logger.trace("requested list : {}", list);
		assertThat(list, is(notNullValue()));


	}
}
