package dao;

import dto.Recommend;

public interface RecommenDao {
	public int insertRecommend(int boardNo, int userNo);
	public Recommend selectRecommend(int boardNo, int userNo);
}
