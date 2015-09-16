package dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dto.Board;
@Repository
public class BoardDaoImpl implements BoardDao {
	
	@Autowired
	JdbcTemplate jdbcTemp;
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
	public int insertBoard(Board board) {
		int result = -1;
		String sql = "insert into board(board_no, content, movie_url ,users_user_no, emotion_no, hash) "
				+ "values(seq_board_comment_no.nextval,?,?,?,?,?)";
		result = jdbcTemp.update(sql, board.getContent(), board.getMovieUrl(), board.getUsersUserNo(), board.getEmotionNo(), board.getHash());
		
		return result;
	}

	@Override
	public Board selectBoard(int boarNo) {
		String sql = "select * from board where board_no = ?";
		//Map<String, Ob>
		return null;
	}

	@Override
	public int updateBoard(Board board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map<String, Object>> selectBoardsByUserNo(int userNo) {
		String sql = "select * from board "
				+ "where users_user_no in "
				+ "(select to_user_no from friend "
				+ "where to_user_no in "
				+ "(select f.from_user_no from friend f where f.to_user_no = ?) and from_user_no = ?) "
				+ "or users_user_no = ?";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, userNo, userNo, userNo);
		return list;
	}

	@Override
	public List<Map<String, Object>> selectBoardsByEmotionno(int emotionNo) {
		String sql = "select * from baord where emotion_no = ?";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, emotionNo);
		return list;
	}

}
