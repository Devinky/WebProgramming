package org.model2.dto;

public class ajaxMember {
	
	private String userName;
	private String userAge;
	private String userGender;
	private String userAddr;
	
	public ajaxMember(String userName, String userAge, String userGender, String userAddr) {
		super();
		this.userName = userName;
		this.userAge = userAge;
		this.userGender = userGender;
		this.userAddr = userAddr;
	}
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserAge() {
		return userAge;
	}
	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public String getUserAddr() {
		return userAddr;
	}
	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}
	
}
