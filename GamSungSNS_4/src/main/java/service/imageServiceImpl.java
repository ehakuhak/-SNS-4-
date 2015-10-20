package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.ImageDao;
import dto.Image;
@Service
public class imageServiceImpl implements ImageService {
	@Autowired
	ImageDao idao;
	
	@Override
	public List<Image> getImageListByBoardNo(int boardNo) {
		
		return null;
	}

	@Override
	public int insertImage(int boardNo, String fileName) {
		int result = idao.insertImage(boardNo, fileName);
		return result;
	}

}
