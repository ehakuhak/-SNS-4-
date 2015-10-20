package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import dto.Image;


@Repository
public class ImageDaoImpl implements ImageDao {
	@Autowired
	JdbcTemplate jdbcTemp;
	
	@Override
	public List<Image> selectImageListByBoardNo(int boardNo) {
		String sql = "select i.* from image i where i.board_no = ?";
		List<Image> image = jdbcTemp.query(sql, getImageRowMapper(), boardNo);
		
		/*List<Map<String, Object>> image2 = jdbcTemp.queryForList(sql, boardNo);
		System.out.println(image2.toString() + "!!!");*/
		
		return image;
	}
	
	public RowMapper<Image> getImageRowMapper(){
		RowMapper<Image> mapper = new RowMapper<Image>() {
			public Image mapRow(ResultSet rs, int rowNum) throws SQLException{
				Image image = new Image();
				image.setBoardNo(rs.getInt("board_no"));
				image.setFileName(rs.getString("file_name"));
				image.setUploadDate(rs.getDate("upload_date"));
				
				return image;
			}
		};
		return mapper;
	}

	@Override
	public int insertImage(int boardNo, String fileName) {
		String sql = "insert into image(board_no, file_name) values (?,?)";
		int result = jdbcTemp.update(sql, boardNo, fileName);
		
		return result;
	}
}
