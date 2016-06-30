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
	

}
