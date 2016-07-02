package cn.yyg.action;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.CommonUtils;

import cn.yyg.domain.Activity;
import cn.yyg.service.ActivityService;
import cn.yyg.service.impl.ActivityServiceImpl;
import cn.yyg.utils.ConstantIntFiled;

import com.opensymphony.xwork2.ActionSupport;


public class ActivityAction extends ActionSupport{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	ActivityService as=new ActivityServiceImpl();
	Activity activity=new Activity();
	List<Activity> activityList;
	public List<Activity> getActivityList() {
		return activityList;
	}
	public void setActivityList(List<Activity> activityList) {
		this.activityList = activityList;
	}


	private String aid;
	private String goodname;
	private String goodtype;
	private String goodcolor;
	private Integer numberCount;
	private String bandCategory;
	private int status;
	private String current;
	
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getGoodname() {
		return goodname;
	}
	public void setGoodname(String goodname) {
		this.goodname = goodname;
	}
	public String getGoodtype() {
		return goodtype;
	}
	public void setGoodtype(String goodtype) {
		this.goodtype = goodtype;
	}
	public String getGoodcolor() {
		return goodcolor;
	}
	public void setGoodcolor(String goodcolor) {
		this.goodcolor = goodcolor;
	}
	public Integer getNumberCount() {
		return numberCount;
	}
	public void setNumberCount(Integer numberCount) {
		this.numberCount = numberCount;
	}
	public String getBandCategory() {
		return bandCategory;
	}
	public void setBandCategory(String bandCategory) {
		this.bandCategory = bandCategory;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCurrent() {
		return current;
	}
	public void setCurrent(String current) {
		this.current = current;
	}
	
	
	public String add_Activity() {
		
		Map<String,Object> title=new HashMap<String,Object>();
		title.put("goodname", goodname);
		title.put("goodtype", goodtype);
		title.put("goodcolor", goodcolor);
		
		activity=as.getActivityByTitle(title);
		int currentIndex=0;
		if(activity.getNumberCount()==null){
			currentIndex=0;
		}
		else{
			currentIndex=activity.getCurrentIndex()+1;
		}
		activity=new Activity(CommonUtils.uuid(),goodname,goodtype,goodcolor,numberCount,
				ConstantIntFiled.initNumberSaled,bandCategory,ConstantIntFiled.Progress,new Date(),currentIndex);
		if(as.add(activity)) {
			return "add_Activity";
		}
		else {
			return "actionError";  //this is a common jsp for action error,should return msg to this jsp,tell user what happen
		}
		
		
	}
	
	/*
	 * indexQueryByPage and backQueryByPage can ben marger,in the last consideration
	 * */
	public String indexQueryProgressActivirtyByPage(){
//		Map<String,Object> pageParam=new HashMap<String,Object>();
//		pageParam.put("status", status);
//		pageParam.put("bandCategory", bandCategory);
//		pageParam.put("current", current);
//		List<Activity> activityList=as.getgetCurrentPageNoUser(pageParam);
		
		activityList=getActivitys();
		System.out.println(activityList.size());
		return "indexProgressActivity";
	}
	
	public String indexQueryWaitingActivirtyByPage(){
		Map<String,Object> pageParam=new HashMap<String,Object>();
		pageParam.put("status", status);
		pageParam.put("bandCategory", bandCategory);
		pageParam.put("current", current);
		List<Activity> activityList=as.getgetCurrentPageNoUser(pageParam);
		return "indexWaitingActivity";
	}
	
	public String indexQueryCompleteActivirtyByPage(){
		Map<String,Object> pageParam=new HashMap<String,Object>();
		pageParam.put("status", status);
		pageParam.put("bandCategory", bandCategory);
		pageParam.put("current", current);
		List<Activity> activityList=as.getgetCurrentPageNoUser(pageParam);
		return "indexCompleteActivity";
	}
	
	//查询正在进行活动的详情
	public String indexQueryDetailProgressActivity(){
		
		return "DetailProgessActivity";
	}
	
	//查询等待揭晓活动的详情
	public String indexQueryDetailWaitingActivity(){
		return "DetailWaitingActivity";
	}
	//查询往期活动的详情
    public String indexQueryDetailCompleteActivity(){
		
		return "DetailCompleteActivty";
	}
	
    //参与某个正在进行活动,点击立即参与按钮  join a progress activitry
    public String JoinProgressActivity(){
    	
    	return "JoinProgressActivity";
    }
    
	//参与某个正在进行活动,点击立即参与按钮
	public String ByNumberOfProgressActivity(){
		
		return "UserJoinActivity";    //return user join activity page,but this page are not in plan,now i return to Kjxq.jsp
	}
	
	//查询我已参与的号码
	public String UserNumberOfProgressActivity(){
		
		return "UserNumberOfProgressAcitivity";
	}
	
	//查询我已参与的号码
	public String UserNumberOfWaitingActivity(){
			
		return "UserNumberOfWaitingAcitivity";
	}
	
	
	
	
	
	
	
	
	/*
	 * 一下方法暂未使用
	 * those method not use now
	 * */
	
	public String backQueryByPage(){
		Map<String,Object> pageParam=new HashMap<String,Object>();
		pageParam.put("status", status);
		pageParam.put("bandCategory", bandCategory);
		pageParam.put("current", current);
		List<Activity> activityList=as.getgetCurrentPageNoUser(pageParam);
		return "backQueryByPage_Activity";
	}
	
	/*
	 *this method can use by user and Manager，it need a param to recognize 
	 * */
	public String getIndexActivityById(){
		activity=as.getById(aid);
		return "getIndexActivityById";
	}

	public String getBackActivityById(){
		activity=as.getById(aid);
		return "getBackActivityById";
	}

	
	
	
	
	//辅助测试类 
	public List<Activity> getActivitys(){
		Activity av= null;
		List<Activity> list=new ArrayList<Activity>();
		for(int i=0;i<4;i++){
			av=new Activity();
			av.setAid("i");
			av.setGoodname("name"+i);
			av.setGoodcolor("color"+i);
			av.setGoodtype(i+"G");
			av.setNumberCount(100+i);
			av.setNumberSaled(i);
			list.add(av);
		}
		return list;
	}
	
	
}
