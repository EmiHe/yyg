package cn.yyg.dao;

import java.util.List;
import java.util.Map;

import cn.yyg.domain.Activity;

public interface ActivityDao extends BaseDao<Activity>{

	public List<Activity> getUserActivity(String userId);
	
	public Activity getByTitle(Map<String, String> map);
}
