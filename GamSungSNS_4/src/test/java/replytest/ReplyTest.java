package replytest;

import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.not;
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
		reply = new Reply(22, "댓글1", 25, 4);
		
		int a= -1;
		a=service.writeReply(reply);
		assertThat(a, is(1));
	}

}
