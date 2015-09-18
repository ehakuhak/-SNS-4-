package dao;

import java.util.List;
import java.util.Map;

public interface HashDao {
	public List<Map<String, Object>> selectHashByKey(String key);
}
