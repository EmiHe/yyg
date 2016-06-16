package cn.yyg.domain;

import java.util.Date;

public class LuckNumber {

	private String lid;
	private Integer number;
	private Date date;
	
	private String userId;
	private String aid;
	public String getLid() {
		return lid;
	}
	public void setLid(String lid) {
		this.lid = lid;
	}
	public Integer getNumber() {
		return number;
	}
	public void setNumber(Integer number) {
		this.number = number;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	@Override
	public String toString() {
		return "LuckNumber [lid=" + lid + ", number=" + number + ", date="
				+ date + ", userId=" + userId + ", aid=" + aid + "]";
	}
	
	
	
}
