package service;

import java.util.List;
import java.util.Map;

import dto.Reply;

public interface ReplyService {
	public int writeReply(Reply reply);
	public int updateReply(Reply reply);
	public List<Map<String, Object>> replyList();
	public List<Reply> replyListByBoardNo(int BoardNo);
	public int deleteReply(int replyNo);
	public int deleteReplyByBoard(int boardNo);
}
