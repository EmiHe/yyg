package cn.yyg.dao.impl;

import java.util.List;
import java.util.Map;

import cn.yyg.dao.ActivityDao;
import cn.yyg.domain.Activity;

public class ActivityDaoImpl extends BaseDaoImpl<Activity> implements ActivityDao{

	public List<Activity> getUserActivity(String userId) {
		List<Activity> list = null;
		try{
			
			list = session.selectList("cn.yyg.ActivityMapper.getUserActivity", userId);
			
		}catch(Exception e){
			
		}
		
		return list;
	}

	public Activity getActivityByTitle(Map<String,Object> title) {
		// TODO Auto-generated method stub
		Activity activity=null;
		try{
			activity=session.selectOne("cn.yyg.ActivityMapper.getActivityByTitle",title);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return activity;
	}

	public List<Activity> getCurrentPageNoUser(Map<String,Object> pageParam) {
		// TODO Auto-generated method stub
		List<Activity> list=null;
		try{
			list=session.selectList("cn.yyg.ActivityMapper.getCurrentPageNoUser",pageParam);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	
	public Activity getByTitle(Map<String, String> map){
		Activity activity = null;
		try{
			
			activity = session.selectOne("cn.yyg.ActivityMapper.getActivityByTitle", map);
			
		}catch(Exception e){
			
		}
		
		return activity;
		
	}

}
