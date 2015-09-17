package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
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
	public int deleteBoard(int boardNo) {
		String sql = "delete from board where board_no = ?";
		return 0;
	}

	@Override
	public int insertBoard(Board board) {
		int result = -1;
		String sql = "insert into board(board_no, content, movie_url ,users_user_no, emotion_no, hash) "
				+ "values(seq_board_comment_no.nextval,?,?,?,?,?)";
		result = jdbcTemp.update(sql, board.getContent(), board.getMovieUrl(), board.getUsersUserNo(),
				board.getEmotionNo(), board.getHash());

		return result;
	}

	@Override
	public int updateBoard(Board board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map<String, Object>> selectBoardsByUserNo(int userNo) {
		String sql = "select * from board " + "where users_user_no in " + "(select to_user_no from friend "
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
	
	public RowMapper<Board> getBoardRowMapper(){
		RowMapper<Board> mapper = new RowMapper<Board>() {
			public Board mapRow(ResultSet rs, int rowNum) throws SQLException{
				Board board = new Board();
				board.setBoardNo(rs.getInt("board_no"));
				board.setRecommendCount(rs.getInt("recommend_count"));
				board.setContent(rs.getString("content"));
				board.setMovieUrl(rs.getString("movie_url"));
				board.setRegDate(rs.getDate("regdate"));
				board.setUsersUserNo(rs.getInt("users_user_no"));
				board.setViewNum(rs.getInt("view_num"));
				board.setEmotionNo(rs.getInt("emotion_no"));
				board.setName(rs.getString("name"));
				
				List<String> hashs = new ArrayList<>();
				List<String> images = new ArrayList<>();
				do{
					hashs.add(rs.getString("hash_tag"));
					images.add(rs.getString("path"));
				}
				while(rs.next());
				
				board.setHash(hashs);
				board.setImageUrl(images);
			
				return board;
			}
		};
		return mapper;
	}

	@Override
	public Board selectBoard(int boardNo) {
		String sql = "select b.*, name, h.CONTENT as hash_tag, i.path as path "
				+ "from board b, users u , hash h, image i "
				+ "where b.USERS_USER_NO = u.USER_NO "
				+ "and b.board_no = ? "
				+ "and h.BOARD_BOARD_NO(+) = b.board_no "
				+ "and i.board_no(+) = b.board_no";
				//
		Board board = jdbcTemp.queryForObject(sql, getBoardRowMapper(), boardNo);
		return board;
	}

	@Override
	public int updateBoardReadCount(int boardNo) {
		String sql = "update board set read_count = nvl(read_count,0)+1 where board_no = ?";
		int result = jdbcTemp.update(sql, boardNo);
		
		return result;
	}

	@Override
	public int updateBoardRecommendCount(int boardNo) {
		String sql = "update board set recommend_count = nvl(recommend_count,0)+1 where board_no = ?";
		int result = jdbcTemp.update(sql, boardNo); 
		return result;
	}
}
