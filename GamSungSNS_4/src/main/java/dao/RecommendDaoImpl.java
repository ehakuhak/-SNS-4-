package dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dto.Recommend;
@Repository
public class RecommendDaoImpl implements RecommenDao {
	@Autowired
	JdbcTemplate jdbcTemp;
	@Override
	public int insertRecommend(Recommend recommend) {
		String sql = "insert into recommend(board_no, user_no) values (?,?)";
		int result = jdbcTemp.update(sql, recommend.getBoard_no(), recommend.getUser_no());
		return result;
	}
	@Override
	public Recommend selectRecommend(int boardNo, int userNo) {
		String sql = "select * from recommend where board_no = ? and user_no = ?";
		Recommend recommend = jdbcTemp.queryForObject(sql, Recommend.class, boardNo, userNo);
		return recommend;
	}

}
