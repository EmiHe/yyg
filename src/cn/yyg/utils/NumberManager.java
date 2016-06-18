package cn.yyg.utils;

import java.util.HashMap;
import java.util.Map;

import cn.yyg.domain.Activity;

public class NumberManager {
	
	private static final Map<String, NumberQueen> activityNumbers = new HashMap<String, NumberQueen>();
	
	public static boolean addActivityNumber(Activity activity) throws Exception {
		
		if( activityNumbers.containsKey( activity.getAid()) ) throw new Exception("the activity is already exists");

		NumberQueen queen = new NumberQueen(activity.getAid(), activity.getNumberCount(), false);
		
		activityNumbers.put(activity.getAid(), queen);
		
		return true;
	}
	
	public static boolean removeActivityNumber(String aid) throws Exception {
	
		if( activityNumbers.containsKey(aid) ) {
			
			activityNumbers.remove(aid);
			
			return true;
		}else{
			
			throw new Exception("there is no activity of the aid");
		}

	} 
	
	public static Integer getLuckNumber(String aid) throws Exception{
		
		if( ! activityNumbers.containsKey(aid)) throw new Exception("there is no activity of the aid");
		else{
			
			return activityNumbers.get(aid).getNumber();
		}
		
	}
	
	public static boolean backLuckNumber(String aid, Integer number) throws Exception{
		
		if( ! activityNumbers.containsKey(aid)) throw new Exception("there is no activity of the aid");
		else{
			
			return activityNumbers.get(aid).addNumber(number);
		}
		
	}
	
}
