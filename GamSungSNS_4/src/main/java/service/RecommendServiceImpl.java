package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.RecommenDao;

@Service
public class RecommendServiceImpl implements RecommendService {
	@Autowired
	RecommenDao dao;
	
	@Override
	public boolean RecommedBoardService(int boardNo, int userNo) {
		
		return false;
	}

}
