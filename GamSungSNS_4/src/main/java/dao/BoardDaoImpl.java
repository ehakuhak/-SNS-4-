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
	public List<Board> selectAllBoards(int rnum) {
	/*	String sql = "select b.*, name, user_id, emotion from board b, users u, emotion e "
				+ "where b.USERS_USER_NO = u.USER_NO and b.emotion_no = e.emotion_no order by b.regdate desc";
	*/
		String sql2 = "SELECT * FROM "
				+ "(SELECT ROWNUM AS rnum, b.* FROM "
				+ "(select b.*, name, user_id, emotion from board b, users u, emotion e "
				+ "where b.USERS_USER_NO = u.USER_NO and b.emotion_no = e.emotion_no order by b.regdate desc) b "
				+ ") WHERE rnum > ? and rnum <= ?";
		//List<Board> board = jdbcTemp.queryForList(sql, getBoardRowMapper());
		List<Board> board = jdbcTemp.query(sql2, getBoardRowMapper(), (rnum-1)*6, rnum*6);
		return board;
	}
	@Override
	public List<Board> selectBoardsByEmotionno(int emotionNo, int rnum) {
		/*String sql = "select b.*, name, user_id, emotion from board b, users u, emotion e "
				+ "where b.USERS_USER_NO = u.USER_NO and b.emotion_no = e.emotion_no and b.emotion_no = ? order by b.regdate desc";
		*/
		String sql2 = "SELECT * FROM "
				+ "(SELECT ROWNUM AS rnum, b.* FROM "
				+ "(select b.*, name, user_id, emotion from board b, users u, emotion e "
				+ "where b.USERS_USER_NO = u.USER_NO and b.emotion_no = e.emotion_no and b.emotion_no = ? order by b.regdate desc) b "
				+ ") WHERE rnum > ? and rnum <= ?";
		List<Board> board = jdbcTemp.query(sql2, getBoardRowMapper(), emotionNo, (rnum-1)*6, rnum*6);
		return board;
	}
	@Override
	public int deleteBoard(int boardNo) {
		String sql = "delete from board where board_no = ?";
		return 0;
	}

	@Override
	public int insertBoard(Board board) {
		//System.out.println(board.toString());
		int result = -1;
		String sql = "insert into board(board_no, content, users_user_no, emotion_no) "
				+ "values(?,?,?,?)";
		result = jdbcTemp.update(sql,board.getBoardNo() ,board.getContent(),board.getUsersUserNo(),board.getEmotionNo());

		return result;
	}

	@Override
	public int updateBoard(Board board) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Map<String, Object>> selectBoardsByMyUserNo(int userNo) {
		String sql = "select * from board " + "where users_user_no in " + "(select to_user_no from friend "
				+ "where to_user_no in "
				+ "(select f.from_user_no from friend f where f.to_user_no = ?) and from_user_no = ?) "
				+ "or users_user_no = ?";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, userNo, userNo, userNo);
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
				//board.setViewNum(rs.getInt("read_count"));
				board.setEmotionNo(rs.getInt("emotion_no"));
				board.setName(rs.getString("name"));
				board.setReadCount(rs.getInt("read_count"));
				board.setReportCount(rs.getInt("report_count"));
				board.setUserId(rs.getString("user_id"));
				board.setEmotion(rs.getString("emotion"));
				/*List<String> hashs = new ArrayList<>();
				List<String> images = new ArrayList<>();
				do{
					hashs.add(rs.getString("hash_tag"));
					images.add(rs.getString("path"));
				}
				while(rs.next());
				
				board.setHash(hashs);
				board.setImageUrl(images);
			*/
				return board;
			}
		};
		return mapper;
	}

	@Override
	public Board selectBoard(int boardNo) {
		String sql = "select b.*, name, user_id, emotion "
				+ "from board b, users u, emotion e "
				+ "where b.USERS_USER_NO = u.USER_NO "
				+ "and b.board_no = ? and "
				+ "b.emotion_no = e.emotion_no";
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

	@Override
	public List<Map<String, Object>> selectBoardsByHash(String key) {
		String sql = "select * from board b where b.BOARD_NO in (select h.BOARD_BOARD_NO from hash h where h.content = ?)";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, key);
		
		return list;
	}

	@Override
	public List<Map<String, Object>> selectBoardsOrderByPapularity(int emotionNo) {
		String sql = "SELECT * "
				+ "FROM (SELECT ROWNUM AS rnum, b.* "
				+ "FROM (select board.* from board where 7 > (sysdate-regdate) "
				+ "and 0 < (sysdate - regdate) "
				+ "and EMOTION_NO = ? "
				+ "order by (recommend_count * 0.7) + (read_count * 0.3) desc) b "
				+ "WHERE ROWNUM <= 1)";
		List<Map<String,Object>> list = jdbcTemp.queryForList(sql, emotionNo);
		return list;
	}
	
	@Override
	public int selectBoardNoSequence() {
		String sql = "select seq_board_comment_no.nextval from dual";
		int result = jdbcTemp.queryForObject(sql, Integer.class);
		
		return result;
	}
	@Override
	public List<Map<String, Object>> selectBoard6Num() {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<Map<String, Object>> selectBoard6Num(int emotionNo) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public Board selectBestBoardByEmotion(int emotionNo) {
		String sql = "SELECT * "
				+ "FROM (SELECT ROWNUM AS rnum, b.* "
				+ "FROM (select board.* from board where 7 > (sysdate-regdate) "
				+ "and 0 < (sysdate - regdate) "
				+ "and EMOTION_NO = ? "
				+ "order by (recommend_count * 0.7) + (read_count * 0.3) desc) b "
				+ "WHERE ROWNUM <= 1)";
		Board board = jdbcTemp.queryForObject(sql, getBoardRowMapper(),emotionNo);
		return board;
	}
	@Override
	public Board selectBestBoard() {
		String sql = "SELECT * "
				+ "FROM (SELECT ROWNUM AS rnum, b.* "
				+ "FROM (select board.* from board where 7 > (sysdate-regdate) "
				+ "and 0 < (sysdate - regdate) "
				+ "order by (recommend_count * 0.7) + (read_count * 0.3) desc) b "
				+ "WHERE ROWNUM <= 1)";
		Board board = jdbcTemp.queryForObject(sql, getBoardRowMapper());
		return board;
	}
}
