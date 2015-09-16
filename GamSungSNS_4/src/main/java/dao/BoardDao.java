package dao;

import java.util.List;
import java.util.Map;

import dto.Board;

public interface BoardDao {
	public List<Board> selectAllBoards();
	public int deleteBoard();
	public int insertBoard(Board board);


	public Board selectBoard(int boardNo);
	public int updateBoard(Board board);
	public List<Map<String, Object>> selectBoardsByUserNo(int userNo);
	public List<Map<String, Object>> selectBoardsByEmotionno(int emotionNo);

}
