package service;

import java.util.List;
import java.util.Map;

import dto.Board;

public interface BoardService {
	public int registBoardService(Board board);
	public List<Map<String, Object>> boardListService(int userNo);
	public Board readBoard(int boardNo);
	public int updateReadCount(int boardNo);
	public int updateRecommendCount(int boardNo);
	
	public List<Map<String, Object>> boardListByEmotion(int emotionNo);
	public List<Map<String, Object>> boardListByHash(String hashkey);
	
	//인기글 읽기
	public List<Map<String, Object>> boardListToPopularityByEmotionNo(int emotionNo);
}
