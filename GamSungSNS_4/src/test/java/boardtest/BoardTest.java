package boardtest;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.hamcrest.CoreMatchers.nullValue;
import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import dao.BoardDao;
import dto.Board;
import service.BoardService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring/application-config.xml")
public class BoardTest {

	@Autowired
	BoardService service;
	
	@Autowired
	BoardDao dao;
	
	Board board;
	/*@Before
	public void init(){
		board = new Board("1", null, 4, 1, null);
	}*/
	@Test
	public void insertBoard() {
		board = new Board("1", null, 4, 1, null);
		int a = -1;
		a = service.registBoardService(board);
		assertThat(a, is(1));
	}
	
	@Test
	public void deleteBoard(){
		
	}

	@Test
	public void updateBoard(){
		
	}
}
