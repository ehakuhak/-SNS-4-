package dao;

import java.util.List;

import dto.Image;

public interface ImageDao {
	List<Image> selectImageListByBoardNo(int boardNo);
}
