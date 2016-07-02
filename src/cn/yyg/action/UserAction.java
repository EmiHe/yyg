package cn.yyg.action;

import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{

	private String userid;
	private String username;
	private String address;
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String binding(){
		
		return "user";    
	}
	
	public String getUser(){
		return "user";
	}
	
	public String updatePhone(){
		
		return "user";
		
	}
	
	public String updateAddress(){
		
		return "user";
	}
	
	public String UserJoinActivity(){
		
		return "UserJoinActivity";
	}
	
	
	
}
