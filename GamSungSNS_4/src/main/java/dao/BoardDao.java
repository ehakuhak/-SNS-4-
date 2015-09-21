package dao;

import java.util.List;
import java.util.Map;

import dto.Board;

public interface BoardDao {
	public List<Board> selectAllBoards();
	public int deleteBoard(int boardNo);
	public int insertBoard(Board board);

	public int updateBoardReadCount(int boardNo);
	public int updateBoardRecommendCount(int boardNo);
	
	public Board selectBoard(int boardNo);
	public int updateBoard(Board board);
	public List<Map<String, Object>> selectBoardsByMyUserNo(int userNo);
	public List<Map<String, Object>> selectBoardsByEmotionno(int emotionNo);
	
	//해시캐그로 검색
	public List<Map<String, Object>> selectBoardsByHash(String key);
	
	//베스트 5
	public List<Map<String,Object>> selectBoardsOrderByPapularity(int emotionNo); 
}
