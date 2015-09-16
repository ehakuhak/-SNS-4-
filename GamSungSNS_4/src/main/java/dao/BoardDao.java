package dao;

import java.util.List;

import dto.Board;

public interface BoardDao {
	public List<Board> selectAllBoards();
	public int deleteBoard();
	public int insertBoard(Board board);
	public Board selectBoard();
	public int updateBoard();
}
