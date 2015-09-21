package dao;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import dto.Hash;
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

}
