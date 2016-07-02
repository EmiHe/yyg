package cn.yyg.dao;

import java.util.List;
import java.util.Map;

import cn.yyg.domain.Activity;

public interface ActivityDao extends BaseDao<Activity>{

	public List<Activity> getUserActivity(String userId);
	
<<<<<<< HEAD
	public Activity getActivityByTitle(Map<String,Object> title);
	
	public List<Activity> getCurrentPageNoUser(Map<String,Object> pageParam);
	
	
=======
	public Activity getByTitle(Map<String, String> map);
>>>>>>> e7f1ccda4bbcc9d7dddd069cfe386c51655f5d17
}
