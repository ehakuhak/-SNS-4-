package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Service;

import dao.ReplyDao;
import dao.ReportDao;
import dto.Recommend;
import dto.Report;
@Service
public class ReportServiceImpl implements ReportService {
	
	@Autowired
	ReportDao dao;
	@Override
	public boolean ReportBoardService(int boardNo, int userNo) {
		int result = dao.insertReport(boardNo, userNo);
		if(result > 0){
			return true;
		}else{
			return false;
		}
	}

	@Override
	public boolean SelectReport(int boardNo, int userNo) throws EmptyResultDataAccessException {
		Report report = dao.selectReport(boardNo, userNo);
		if(report== null){
		//	System.out.println("???");
			return true;
		}
		return false;
	}

}
