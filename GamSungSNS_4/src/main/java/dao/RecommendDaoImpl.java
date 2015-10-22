package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import dto.Board;
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
		String sql = "insert into recommend(board_no, user_no) values(? , ?)";
		int result = jdbcTemp.update(sql, boardNo, userNo);
		return result;
	}
	@Override
	public Recommend selectRecommend(int boardNo, int userNo)throws EmptyResultDataAccessException {
		
		String sql = "select * from recommend where board_no = ? and user_no = ?";
		Recommend recommend = jdbcTemp.queryForObject(sql, getRecommendRowMapper(), boardNo, userNo);
		
		return recommend;
	}
	
	public RowMapper<Recommend> getRecommendRowMapper(){
		RowMapper<Recommend> mapper = new RowMapper<Recommend>() {
			public Recommend mapRow(ResultSet rs, int rowNum) throws SQLException{
				Recommend recommend = new Recommend();
				recommend.setBoard_no(rs.getInt("board_no"));
				recommend.setUser_no(rs.getInt("user_no"));
				recommend.setRecDate(rs.getDate("regdate"));
				return recommend;
			}
		};
		return mapper;
	}

}
