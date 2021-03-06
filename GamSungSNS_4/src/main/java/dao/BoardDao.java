package dao;

import java.util.List;
import java.util.Map;

import dto.Board;

public interface BoardDao {
	public List<Board> selectAllBoards(int rnum);
	public int deleteBoard(int boardNo);
	public int insertBoard(Board board);

	//조회수, 추천, 신고 업데이트
	public int updateBoardReadCount(int boardNo);
	public int updateBoardRecommendCount(int boardNo);
	public int updateBoardRepotCount(int boardNo);
	
	public Board selectBoard(int boardNo);
	public int updateBoard(Board board);
	public List<Map<String, Object>> selectBoardsByMyUserNo(int userNo);
	public List<Board> selectBoardsByEmotionno(int emotionNo, int rnum);
	
	//해시캐그로 검색
	public List<Map<String, Object>> selectBoardsByHash(String key);
	
	//베스트 5
	public List<Map<String,Object>> selectBoardsOrderByPapularity(int emotionNo);
	
	//board 시퀀스
	public int selectBoardNoSequence();
	
	public List<Map<String, Object>> selectBoard6Num();
	public List<Map<String, Object>> selectBoard6Num(int emotionNo);
	
	public Board selectBestBoardByEmotion(int emotionNo);
	public Board selectBestBoard();
	
	
}
