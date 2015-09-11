package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.BoardDao;
import dto.Board;

@Service("boardService")
public class BoardServiceImpl implements BoardService {
	@Autowired
	BoardDao dao;
	
	@Override
	public int registBoardService(Board board) {
		int result = -1;
		//System.out.println(board.toString());
		result = dao.insertBoard(board);
		
		return result;
	}

}
