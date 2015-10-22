package dao;

import org.springframework.dao.EmptyResultDataAccessException;

import dto.Recommend;
import dto.Report;

public interface ReportDao {
	public int insertReport(int boardNo, int userNo);
	public Report selectReport(int boardNo, int userNo) throws EmptyResultDataAccessException;
}
