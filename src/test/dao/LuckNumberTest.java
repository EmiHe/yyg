package test.dao;

import java.sql.SQLException;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.junit.Test;

import util.BeanFactory;
import util.CommonUtils;
import util.SessionFactoryUtils;
import cn.yyg.dao.LuckNumberDao;
import cn.yyg.domain.LuckNumber;

public class LuckNumberTest {

	LuckNumberDao dao = (LuckNumberDao) BeanFactory.get("LuckNumberDao");
			
	@Test
	public void testAdd(){
		
		try {
			LuckNumber bean = dao.getById("cn.yyg.LuckNumberMapper.getById", "1we");
			bean.setLid(CommonUtils.uuid());
			bean.setUserId("1qaz");
			bean.setAid("1sd");
			bean.setNumber(66);
			bean.setDate(new Date());
			
			dao.add("cn.yyg.LuckNumberMapper.insert", bean);
			SessionFactoryUtils.getSession().commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void testUpdate(){
		
		try{
			LuckNumber bean = dao.getById("cn.yyg.LuckNumberMapper.getById", "AB2182379291416F9281A7C1BA36D0B7");
			
			bean.setNumber(68);
			
			System.out.println(dao.updateById("cn.yyg.LuckNumberMapper.updateById", bean) );
			SessionFactoryUtils.getSession().commit();
			
		}catch(Exception e){
			
		}
	}
	@Test
	public void testgetUserActivityAll(){
		Map<String, Object> params = new HashMap<String, Object>();
		 	params.put("userId", "1qaz");
		 	params.put("aid", "1sd");
		System.out.println( dao.getUserActivityAll(params) );
	}
	@Test
	public void testgeByActivityNumber(){
		Map<String, Object> params = new HashMap<String, Object>();
			params.put("aid", "1sd");
			params.put("number", "8");
		System.out.println(dao.getByNumber(params) );
	}
	@Test
	public void testDeleteById(){
		try {
			System.out.println(dao.deleteById("cn.yyg.LuckNumberMapper.deleteById", "AB2182379291416F9281A7C1BA36D0B7"));
			SessionFactoryUtils.getSession().commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
