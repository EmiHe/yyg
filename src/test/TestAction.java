package test;

import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport{
	private String name;
	private String attrUrl;
	private String sex;
	
		public String testMethod(){
			
			System.out.println("name : " + name);
			System.out.println("attrUrl : " + attrUrl);
			System.out.println("sex : " + sex);
			
			return "fin";
		}

		//=======================
		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getAttrUrl() {
			return attrUrl;
		}

		public void setAttrUrl(String attrUrl) {
			this.attrUrl = attrUrl;
		}

		public String getSex() {
			return sex;
		}

		public void setSex(String sex) {
			this.sex = sex;
		}
		
		
}
