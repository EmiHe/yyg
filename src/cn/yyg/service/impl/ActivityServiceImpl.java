package cn.yyg.service.impl;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.BeanFactory;
import util.SessionFactoryUtils;
import cn.yyg.dao.ActivityDao;
import cn.yyg.domain.Activity;
import cn.yyg.service.ActivityService;

public class ActivityServiceImpl implements ActivityService {

	ActivityDao dao = (ActivityDao) BeanFactory.get("ActivityDao");
	Activity activity=new Activity();
	
	public boolean add(Activity bean) {
		// TODO Auto-generated method stub
		boolean bool = false;
		try {
			bool = dao.add("cn.yyg.ActivityMapper.insert",bean);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//推荐实现异常转译
			//throw new ServiceException("添加活动信息出错，请检查相应输入数据");
		}
		return bool;
		
	}

	public boolean deleteById(String id) {
		// TODO Auto-generated method stub
		boolean bool=false;
		try{
			bool=dao.deleteById("cn.yyg.ActivityMapper.deleteById", id);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return bool;
	}

	public boolean updateById(Activity t) {
		// TODO Auto-generated method stub
		boolean bool=false;
		try{
			bool=dao.updateById("cn.yyg.ActivityMapper.updateById", t);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return bool;
	}

	public Activity getById(String id) {
		// TODO Auto-generated method stub
		try {
			activity=dao.getById("cn.yyg.ActivityMapper.getById", id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return activity;
	}

	public List<Activity> getCurrentPage(Map<String, Object> attrMap) {
		// TODO Auto-generated method stub
		List<Activity> list=new ArrayList<Activity>();
		try{
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("attUrl", "bandcategory='苹果'");
			map.put("lose", 4);
			map.put("pageSize", 5);
		    list = SessionFactoryUtils.getSession().selectList("cn.yyg.ActivityMapper.getCurrentPage", map);
		    System.out.println(list);	
		}catch(Exception e){
			e.printStackTrace();
		}
		return list;
	}

	public Activity getActivityByTitle(Map<String, Object> title) {
		// TODO Auto-generated method stub
		activity=dao.getActivityByTitle(title);
		return activity;
	}

	public List<Activity> getgetCurrentPageNoUser(Map<String, Object> pageParam) {
		// TODO Auto-generated method stub
		List<Activity> list=null;
		try{
			list=dao.getCurrentPageNoUser(pageParam);
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

}
