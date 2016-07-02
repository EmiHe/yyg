package cn.yyg.service;

import java.util.List;
import java.util.Map;

import cn.yyg.domain.Activity;


public interface ActivityService {

	
	public boolean add(Activity t);
	
	public boolean deleteById(String id);
	
	public boolean updateById(Activity t);
	
	public Activity getById(String id);
	
	public List<Activity> getCurrentPage(Map<String,Object> attrMap);
	
	public Activity getActivityByTitle(Map<String,Object> title);
	
	public List<Activity> getgetCurrentPageNoUser(Map<String,Object> pageParam);
	
}
