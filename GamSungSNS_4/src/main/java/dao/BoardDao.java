package dao;

import java.util.List;

import dto.Board;

public interface BoardDao {
	public List<Board> selectAllBoards();
	public int deleteBoard();
	public int insertBoard();
	public int selectBoard();
	public int updateBoard();
}
