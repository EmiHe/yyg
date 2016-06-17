package test.dao;

import java.sql.SQLException;
import java.util.Date;

import org.junit.Test;

import util.BeanFactory;
import util.CommonUtils;
import util.SessionFactoryUtils;
import cn.yyg.dao.UserDao;
import cn.yyg.domain.User;

public class UserDaoTest {
	
	UserDao dao = (UserDao) BeanFactory.get("UserDao");
	
	@Test
	public void testAdd(){
		User user = new User();
			user.setUserId(CommonUtils.uuid());
//			user.set
		
		try {
			System.out.println(dao.add("cn.yyg.UserMapper.insert", user));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		SessionFactoryUtils.getSession().commit();
	}
	@Test
	public void testUpdate(){
		try {
			User user = dao.getById("cn.yyg.UserMapper.getById", "1qaz");
			System.out.println(user);
//			dao.deleteById("cn.yyg.UserMapper.deleteById", user.getUserId());
			user.setUserId(CommonUtils.uuid());
			user.setPassword("666");
			user.setUsername("李四");
			user.setUserPhone("18428346868");
			user.setAddress("西南石油大写");
			user.setDate(new Date());
			System.out.println(dao.updateById("cn.yyg.UserMapper.updateById", user));
			SessionFactoryUtils.getSession().commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	@Test
	public void testGetById(){
		try {
			System.out.println(dao.getById("cn.yyg.UserMapper.getById", "BAE9D0DDBAAE4C939E69F0B1A7DB80DB"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Test
	public void testDeleteById(){
		try {
			dao.deleteById("cn.yyg.UserMapper.deleteById", "BAE9D0DDBAAE4C939E69F0B1A7DB80DB");
			SessionFactoryUtils.getSession().commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
