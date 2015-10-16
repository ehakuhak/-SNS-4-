package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import dto.Board;
import dto.Reply;
@Repository
public class ReplyDaoImpl implements ReplyDao {

	@Autowired
	JdbcTemplate jdbcTemp;
	@Override
	public Reply selectReply() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteReply(int replyNo) {
		int result=-1;
		String sql = "delete from reply where reply_no=?";
		result = jdbcTemp.update(sql, replyNo);
		return result;
	}

	@Override
	public int updateReplybyUserNo(Reply reply) {
		int result = -1;
		String sql = "update reply set reply_content=? where reply_no=? and users_user_no=?";
		result = jdbcTemp.update(sql, reply.getReplyContent(), reply.getReplyNo(), reply.getUsersUserNo());
		
		return result;
	}

	@Override
	public int insertReply(Reply reply) {
		int result = -1;
		String sql = "insert into reply(reply_no, reply_content, board_board_no, users_user_no) "
				+ "values(seq_reply_reply_no.nextval,?,?,?)";
		result = jdbcTemp.update(sql, reply.getReplyContent(), reply.getBoardBoardNo(), reply.getUsersUserNo());
		
		return result;
	}

	@Override
	public List<Map<String, Object>> selectAllReply() {
		String sql = "select * from reply";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql);
		return list;
	}

	@Override
	public int deleteReplyByBoardNo(int boardNo) {
		int result = -1;
		String sql = "delete from reply where board_board_no = ?";
		result = jdbcTemp.update(sql, boardNo);
		return result;
	}

	@Override
	public List<Reply> selectReplybyBoardNo(int boardNo) {
		String sql = "select r.*, name, user_id from reply r, users u "
				+ "where u.user_no = r.users_user_no and board_board_no = ?";
		
		List<Reply> reply = jdbcTemp.query(sql, getReplyRowMapper(), boardNo);
		return reply;
	}
	
	public RowMapper<Reply> getReplyRowMapper(){
		RowMapper<Reply> mapper = new RowMapper<Reply>() {
			public Reply mapRow(ResultSet rs, int rowNum) throws SQLException{
				Reply reply = new Reply();
				reply.setBoardBoardNo(rs.getInt("board_board_no"));
				reply.setName(rs.getString("name"));
				reply.setRegDate(rs.getDate("regdate"));
				reply.setReplyContent(rs.getString("reply_content"));
				reply.setReplyNo(rs.getInt("reply_no"));
				reply.setUserId(rs.getString("user_id"));
				reply.setUsersUserNo(rs.getInt("users_user_no"));
				
				return reply;
			}
		};
		return mapper;
	}

}
