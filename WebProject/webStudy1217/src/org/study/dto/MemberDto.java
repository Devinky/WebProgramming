package org.study.dto;

public class MemberDto {
	
	private String userId;
	private String userpw;
	private String userName;
	
	public MemberDto(String userId, String userpw, String userName) {
		super();
		this.userId = userId;
		this.userpw = userpw;
		this.userName = userName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	
}
