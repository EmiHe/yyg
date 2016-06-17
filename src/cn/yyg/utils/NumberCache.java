package cn.yyg.utils;

import java.util.Arrays;
import java.util.Collection;

import org.apache.commons.lang3.ArrayUtils;
import org.junit.Test;

public class NumberCache {

	public NumberCache() {
		super();
		// TODO Auto-generated constructor stub
	}

	private final static Integer[] cache = new Integer[8000];
	
	static{
		
		for (int i = 0; i < 8000; i++) {
			cache[i] = new Integer(i + 1);
		}
		
	}
	
	public static Integer getValue(int num){
		
		if(num <= 0) throw new IllegalArgumentException("the value must big than 0");
		
		if(num <= 8000){
			return cache[num - 1];
		}else{
			
			return new Integer(num);
		}
		
	}
	
	/**
	 * the argument must not bigger than 8000
	 * @param end
	 * @return
	 */
	public static Collection<Integer> getValues(int end){
			
		if(end <= 0) throw new IllegalArgumentException("the value must big than 0"); 
		
		if(end <= 8000){
			
			return Arrays.asList( ArrayUtils.subarray(cache, 0, end));
			
		}else{
			
			throw new IllegalArgumentException("the value of argument must not bigger than 8000");
		}
		
		
	}
	
	

}
