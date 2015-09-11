package dao;

import java.util.List;

import dto.Board;

public class BoardDaoImpl implements BoardDao {

	@Override
	public List<Board> selectAllBoards() {
		String sql = "select * from board b, users u, friend f where f.userid = ?(==users.id) and ";
		return null;
	}

	@Override
	public int deleteBoard() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertBoard() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int selectBoard() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBoard() {
		// TODO Auto-generated method stub
		return 0;
	}

}
