package service;

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

}
