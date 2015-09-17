package dao;

import dto.Recommend;

public interface RecommenDao {
	public int insertRecommend(Recommend recommend);
	public Recommend selectRecommend(int boardNo, int userNo);
}
