package replytest;

import static org.junit.Assert.*;

import java.util.List;
import java.util.Map;

import static org.hamcrest.CoreMatchers.not;
import static org.hamcrest.CoreMatchers.notNullValue;
import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.nullValue;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.ReplyDao;
import dto.Reply;
import service.ReplyService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring/application-config.xml")
public class ReplyTest {
	@Autowired
	ReplyService service;
	
	@Autowired
	ReplyDao dao;
	
	Reply reply;
	@Test
	public void insertReplyTest() {
		reply = new Reply("댓글ing", 42, 4);
		
		int a= -1;
		a=service.writeReply(reply);
		System.out.println("insert success : "+a);
		assertThat(a, is(1));
	}
	
	@Test
	public void updateReplyTest() {
		reply = new Reply(24, "update", 4);
		
		int a= -1;
		a=service.updateReply(reply);
		System.out.println("update success : " +a);
		assertThat(a, is(1));
	}
	
	@Test
	public void replyListTest(){
		List<Map<String, Object>> list = service.replyList();
		System.out.println(list.toString());
		assertThat(list, is(notNullValue()));
	}
	
	@Test
	public void replyDeleteTest(){
		int a=-1;
		a=service.deleteReply(24);
		System.out.println("delete success : "+a);
		assertThat(a, is(1));
	}
	
	@Test
	public void replySelectByBoardNo(){
		/*List<Map<String, Object>> list = service.replyListByBoardNo(25);
		System.out.println(list.toString());
		assertThat(list, is(notNullValue()));*/
	}
	
	@Test
	public void replyDeleteByBoardNo(){
		int a= -1;
		a=service.deleteReplyByBoard(42);
		System.out.println("delete success : "+a);
		assertThat(a, is(not(0)));
	}

}
