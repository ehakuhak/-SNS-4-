package boardtest;

import static org.hamcrest.CoreMatchers.is;
import static org.hamcrest.CoreMatchers.not;
import static org.hamcrest.CoreMatchers.nullValue;
import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

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
		board = new Board("#abcd #efgh 가나다라마바사", null, 4, 1);
	//	List<String> list = new ArrayList<>();
	//	list.add("#abcd");
	//	list.add("#efgh");
	//	board.setHash(list);
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
	
	@Test
	public void readBoardTest(){
		Board board = service.readBoard(107);
		System.out.println(board);
		assertThat(board, is(not(nullValue())));
	}
}
