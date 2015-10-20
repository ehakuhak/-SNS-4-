package dao;

import java.util.List;

import dto.Image;

public interface ImageDao {
	public List<Image> selectImageListByBoardNo(int boardNo);
	public int insertImage(int boardNo, String fileName);
}
