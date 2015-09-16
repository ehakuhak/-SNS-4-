package dao;

import java.util.List;

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
	public Board selectBoard() {
		/*String result = null;
		String sql = "select password from users where user_id=?";
		result = jdbcTemp.queryForObject(sql, String.class, id);
		
		return result;*/
		return null;
		
	}

	@Override
	public int updateBoard() {
		// TODO Auto-generated method stub
		return 0;
	}

}
