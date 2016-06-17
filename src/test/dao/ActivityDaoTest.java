package test.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.Test;

import util.BeanFactory;
import util.CommonUtils;
import util.SessionFactoryUtils;
import cn.yyg.dao.ActivityDao;
import cn.yyg.domain.Activity;

public class ActivityDaoTest {
	
	ActivityDao dao = (ActivityDao) BeanFactory.get("ActivityDao");
	
	@Test
	public void testAdd(){
		
		try {
			Activity bean = dao.getById("cn.yyg.ActivityMapper.getById", "D82B5EEB4D7D4B50A108C82EF6A6D31C");
			bean.setAid(CommonUtils.uuid());
//			bean.setUserId();
			bean.setGoodname("mi4");
			bean.setGoodtype("16G");
			bean.setGoodcolor("blue");
			bean.setNumberCount(1999);
			bean.setNumberSaled(1200);
			bean.setStatus(1);
			bean.setOpenDate(new Date());
			bean.setCurrentIndex(2);
			
			dao.add("cn.yyg.ActivityMapper.insert", bean);
			SessionFactoryUtils.getSession().commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void testUpdate(){
		try {
			Activity bean = dao.getById("cn.yyg.ActivityMapper.getById", "D82B5EEB4D7D4B50A108C82EF6A6D31C");
			bean.setUserId("CB6558B1BF6645198538FADC0678B947");
			bean.setSourceNumber("66");
			
			bean = new Activity();
			bean.setAid("D82B5EEB4D7D4B50A108C82EF6A6D31C");
			bean.setSourceNumber("222");
			
			System.out.println(dao.updateById("cn.yyg.ActivityMapper.updateById", bean) );
			SessionFactoryUtils.getSession().commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Test
	public void testGetUserActivity(){
		
		List<Activity> list = dao.getUserActivity("1qaz");
		System.out.println(list);
	
	}
	@Test
	public void testDelete(){
		try {
			System.out.println(dao.deleteById("cn.yyg.ActivityMapper.deleteById", "84D7F4C1EE934D3D98D3703DAC9F377E"));
			SessionFactoryUtils.getSession().commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void testActivityUserNumber(){
		
		try {
			Map<String, Object> map = new HashMap<String, Object>();
				map.put("userId", "1qaz");
				map.put("aid", "1sd");
			Activity list = SessionFactoryUtils.getSession().selectOne("cn.yyg.ActivityMapper.getActivityUserNumber", map);
			System.out.println(list);
			System.out.println(list.getMyLuckNumber());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
