package service;

import org.springframework.dao.EmptyResultDataAccessException;

public interface RecommendService {
	public boolean RecommedBoardService(int boardNo, int userNo);
	public boolean SelectRecommend(int boardNo, int userNo) throws EmptyResultDataAccessException;
}
