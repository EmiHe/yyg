package cn.yyg.dao;

import java.util.List;
import java.util.Map;

import cn.yyg.domain.LuckNumber;

public interface LuckNumberDao extends BaseDao<LuckNumber>{

	public List<LuckNumber> getUserActivityAll(Map<String, Object> params);
	
	public LuckNumber getByNumber(Map<String, Object> params);
		
	
}
