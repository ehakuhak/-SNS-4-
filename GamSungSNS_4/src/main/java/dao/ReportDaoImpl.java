package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import dto.Recommend;
import dto.Report;
@Repository
public class ReportDaoImpl implements ReportDao {
	@Autowired
	JdbcTemplate jdbcTemp;
	
	@Override
	public int insertReport(int boardNo, int userNo) {
		String sql = "insert into report(board_no, user_no) values(? , ?)";
		int result = jdbcTemp.update(sql, boardNo, userNo);
		return result;
	}

	@Override
	public Report selectReport(int boardNo, int userNo) throws EmptyResultDataAccessException {
		String sql = "select * from report where board_no = ? and user_no = ?";
		Report report = jdbcTemp.queryForObject(sql, getReportRowMapper(), boardNo, userNo);
		
		return report;
	}
	
	public RowMapper<Report> getReportRowMapper(){
		RowMapper<Report> mapper = new RowMapper<Report>() {
			public Report mapRow(ResultSet rs, int rowNum) throws SQLException{
				Report report = new Report();
				report.setBoard_no(rs.getInt("board_no"));
				report.setUser_no(rs.getInt("user_no"));
				report.setRegdate(rs.getDate("regdate"));
				
				return report;
			}
		};
		return mapper;
	}

}
