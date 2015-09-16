package dao;

import java.util.List;
import java.util.Map;

import dto.Reply;

public interface ReplyDao {
	
	public Reply selectReply();
	
	public int deleteReply(int replyNo);
	
	public int updateReplybyUserNo(Reply reply);
	
	public int insertReply(Reply reply);
	
	public List<Map<String, Object>> selectAllReply();
	
	public List<Map<String, Object>> selectReplybyBoardNo(int boardNo);
	
	public int deleteReplyByBoardNo(int boardNo);
	
	
}
