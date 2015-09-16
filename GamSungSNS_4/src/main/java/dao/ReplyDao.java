package dao;

import java.util.List;

import dto.Reply;

public interface ReplyDao {
	
	public Reply selectReply();
	
	public int deleteReply();
	
	public int updateReply();
	
	public int insertReply(Reply reply);
	
	public List<Reply> selectReplyByBoardNo();
	
	public int deleteReplyByBoardNo();
	
	
}
