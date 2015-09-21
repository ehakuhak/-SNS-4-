package dao;

import java.util.List;
import java.util.Map;

import dto.Hash;

public interface HashDao {
	public List<Map<String, Object>> selectHashByKey(String key);
	
	//hash insert
	public int insertHash(String hashContent);
}
