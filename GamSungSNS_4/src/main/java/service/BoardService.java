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
}
