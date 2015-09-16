package dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

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
	public List<Map<String, Object>> selectReplybyBoardNo(int boardNo) {
		String sql = "select * from reply where board_board_no = ?";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, boardNo);
		return list;
	}

}
