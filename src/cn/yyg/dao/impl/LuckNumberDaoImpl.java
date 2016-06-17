package cn.yyg.dao.impl;

import java.util.List;
import java.util.Map;

import cn.yyg.dao.LuckNumberDao;
import cn.yyg.domain.LuckNumber;

public class LuckNumberDaoImpl extends BaseDaoImpl<LuckNumber> implements LuckNumberDao{

	public List<LuckNumber> getUserActivityAll(Map<String, Object> params) {
		List<LuckNumber> list = null;
		try{
		
			list = session.selectList("cn.yyg.LuckNumberMapper.getUserActivityAll", params);
			
		}catch(Exception e){
			
		}
		
		return list;
	}

	public LuckNumber getByNumber(Map<String, Object> params) {
		LuckNumber bean = null;
		try{
			
			bean = session.selectOne("cn.yyg.LuckNumberMapper.getByActivityNumber", params);
			
		}catch(Exception e){
			
		}
		
		return bean;
	}

}
