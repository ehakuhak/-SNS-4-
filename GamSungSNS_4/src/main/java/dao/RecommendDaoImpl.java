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
	public int insertRecommend(int boardNo, int userNo) {
		/*String sql = "insert into recommend(board_no, user_no) "
				+ "select ?, ? from dual "
				+ "where ? = (select board_no from board b where b.USERS_USER_NO != ? and board_no = ?)";*/
		String sql = "insert itno recommend(board_no, user_no) values(? , ?)";
		int result = jdbcTemp.update(sql, boardNo, userNo);
		return result;
	}
	@Override
	public Recommend selectRecommend(int boardNo, int userNo) {
		String sql = "select * from recommend where board_no = ? and user_no = ?";
		Recommend recommend = jdbcTemp.queryForObject(sql, Recommend.class, boardNo, userNo);
		return recommend;
	}

}
