package dao;

import java.util.List;

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
	public int deleteReply() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateReply() {
		// TODO Auto-generated method stub
		return 0;
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
	public List<Reply> selectReplyByBoardNo() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteReplyByBoardNo() {
		// TODO Auto-generated method stub
		return 0;
	}

}
