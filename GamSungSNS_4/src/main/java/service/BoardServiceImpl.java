package service;

import java.util.List;
import java.util.Map;

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

	@Override
	public List<Map<String, Object>> boardListService(int userNo) {
		List<Map<String, Object>> list = dao.selectBoardsByUserNo(userNo);
		return list;
	}

	@Override
	public Board readBoard(int boardNo) {
		Board board = dao.selectBoard(boardNo);
		return board;
	}

	@Override
	public int updateReadCount(int boardNo) {
		int result = dao.updateBoardReadCount(boardNo);
		return result;
	}

	@Override
	public int updateRecommendCount(int boardNo) {
		int result = dao.updateBoardRecommendCount(boardNo);
		return result;
	}

}
