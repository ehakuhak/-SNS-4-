package service;

import java.util.List;

import dto.Image;

public interface ImageService {
	public List<Image> getImageListByBoardNo(int boardNo);
	public int insertImage(int boardNo, String fileName);
}
