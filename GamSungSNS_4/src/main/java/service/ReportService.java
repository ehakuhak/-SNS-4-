package service;

import org.springframework.dao.EmptyResultDataAccessException;

public interface ReportService {
	public boolean ReportBoardService(int boardNo, int userNo);
	public boolean SelectReport(int boardNo, int userNo) throws EmptyResultDataAccessException;
}
