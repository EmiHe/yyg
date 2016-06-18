package test.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

import org.junit.Test;

import util.BeanFactory;
import cn.yyg.dao.ActivityDao;
import cn.yyg.domain.Activity;
import cn.yyg.utils.NumberManager;

public class MultiThrPostTest {
	
	static{
		
		try {
			Activity a = ((ActivityDao)BeanFactory.get("ActivityDao")).getById("cn.yyg.ActivityMapper.getById", "1sd"); 
			NumberManager.addActivityNumber(a );
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void Test(){
		for (int i = 0; i < 10; i++) {
			test();
			System.out.println("===========================");
		}
	}
	
	@Test
	public void test(){
		
		
		
		ExecutorService exe = Executors.newFixedThreadPool(50);
		List<MyWork> list = new ArrayList<MyWork>();
		for (int i = 0; i < 50; i++) {
			list.add(new MyWork());
		}
		
		try {
			List<Future<Integer>> result  = exe.invokeAll(list);
			int i = 1;
			for (Future<Integer> future : result) {
				System.out.println(i++ + ":" + future.get());
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	
	


}

class MyWork implements Callable<Integer>{

	public Integer call() throws Exception {
		
		return NumberManager.getLuckNumber("1sd");
	}

}