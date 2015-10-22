package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import dao.RecommenDao;
import dto.Recommend;

@Service
public class RecommendServiceImpl implements RecommendService {
	@Autowired
	RecommenDao dao;
	
	@Override
	public boolean RecommedBoardService(int boardNo, int userNo) {
		int result = dao.insertRecommend(boardNo, userNo);
		if(result > 0){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean SelectRecommend(int boardNo, int userNo) throws EmptyResultDataAccessException{
		Recommend recommend = dao.selectRecommend(boardNo, userNo);
		if(recommend == null){
		//	System.out.println("???");
			return true;
		}
		return false;
	}

}
