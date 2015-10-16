package service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ReplyDao;
import dto.Reply;
@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDao dao;
	
	@Override
	public int writeReply(Reply reply) {
		int result=-1;
		
		result = dao.insertReply(reply);
		
		return result;

	}

	@Override
	public int updateReply(Reply reply) {
		int result = -1;
		
		result = dao.updateReplybyUserNo(reply);
		return result;
	}

	@Override
	public List<Map<String, Object>> replyList() {
		List<Map<String, Object>> replyLists = dao.selectAllReply();
		return replyLists;
	}

	@Override
	public int deleteReply(int replyNo) {
		int result = -1;
		result = dao.deleteReply(replyNo);
		return result;
	}

	@Override
	public List<Reply> replyListByBoardNo(int boardNo) {
		List<Reply> list = dao.selectReplybyBoardNo(boardNo);
		return list;
	}

	@Override
	public int deleteReplyByBoard(int boardNo) {
		int result = -1;
		result = dao.deleteReplyByBoardNo(boardNo);
		return result;
	}

}
