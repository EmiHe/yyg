package cn.yyg.domain;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Activity {
	
	private String aid;
	private String goodname;
	private String goodtype;
	private String goodcolor;
	private Integer numberCount;
	private Integer numberSaled;
	private Integer status;
	private Date openDate;
	private Integer currentIndex;
	private String userId;
	private String sourceNumber;
	private String bandCategory;
	
	private List<LuckNumber> myLuckNumber = new ArrayList<LuckNumber>();
	
	public Activity(){}
	
	public Activity(String aid,String goodname,String goodtype,String goodcolor,Integer numberCount,
			Integer numberSaled,String bandCategory,Integer status,Date openDate,Integer currentIndex) {
		this.goodname=goodname;
		this.goodtype=goodtype;
		this.goodcolor=goodcolor;
		this.numberCount=numberCount;
		this.bandCategory=bandCategory;
		this.numberSaled=numberSaled;
		this.status=status;
		this.openDate=openDate;
		this.currentIndex=currentIndex;
	}

	public String getBandCategory() {
		return bandCategory;
	}

	public void setBandCategory(String bandCategory) {
		this.bandCategory = bandCategory;
	}

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

	public Integer getNumberSaled() {
		return numberSaled;
	}

	public void setNumberSaled(Integer numberSaled) {
		this.numberSaled = numberSaled;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}

	public Integer getCurrentIndex() {
		return currentIndex;
	}

	public void setCurrentIndex(Integer currentIndex) {
		this.currentIndex = currentIndex;
	}

	public String getSourceNumber() {
		return sourceNumber;
	}

	public void setSourceNumber(String sourceNumber) {
		this.sourceNumber = sourceNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public List<LuckNumber> getMyLuckNumber() {
		return myLuckNumber;
	}

	public void setMyLuckNumber(List<LuckNumber> myLuckNumber) {
		this.myLuckNumber = myLuckNumber;
	}

	@Override
	public String toString() {
		return "Activity [aid=" + aid + ", goodname=" + goodname
				+ ", goodtype=" + goodtype + ", goodcolor=" + goodcolor
				+ ", numberCount=" + numberCount + ", numberSaled="
				+ numberSaled + ", status=" + status + ", openDate=" + openDate
				+ ", currentIndex=" + currentIndex + ", userId=" + userId
				+ ", sourceNumber=" + sourceNumber + ", bandCategory="
				+ bandCategory + ", myLuckNumber=" + myLuckNumber + "]";
	}



	


	
	
	
	

}
