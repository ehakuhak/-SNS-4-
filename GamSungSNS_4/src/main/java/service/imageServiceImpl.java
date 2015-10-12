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

}
