package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import dto.Hash;
import dto.Image;
@Repository
public class HashDaoImpl implements HashDao {

	@Autowired
	JdbcTemplate jdbcTemp;
	
	@Override
	public List<Map<String, Object>> selectHashByKey(String key) {
		String sql = "select * from board b where b.BOARD_NO in (select h.BOARD_BOARD_NO from hash h where h.content = ?)";
		List<Map<String, Object>> list = jdbcTemp.queryForList(sql, key);
		
		return list;
	}

	@Override
	public int insertHash(String hashContent) {
		String sql = "insert into hash(content, board_board_no) values(?,seq_board_comment_no.currval)";
		int result = jdbcTemp.update(sql, hashContent);
		return result;
	}

	
	public RowMapper<Hash> getHashRowMapper(){
		RowMapper<Hash> mapper = new RowMapper<Hash>() {
			public Hash mapRow(ResultSet rs, int rowNum) throws SQLException{
				Hash hash = new Hash();
				hash.setBoardBoardNo(rs.getInt("board_board_no"));
				hash.setContent(rs.getString("content"));
				return hash;
			}
		};
		return mapper;
	}

	@Override
	public List<Hash> selectHashListByBoardNo(int boardNo) {
		String sql = "select i.* from image i where i.board_no = ?";
		List<Hash> hash = jdbcTemp.query(sql, getHashRowMapper(), boardNo);
		
		/*List<Map<String, Object>> image2 = jdbcTemp.queryForList(sql, boardNo);
		System.out.println(image2.toString() + "!!!");*/
		return hash;
	}
}
