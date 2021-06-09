package hustar.member.service;

import egovframework.com.cmm.ComDefaultVO;

// extends ComDefaultVO 상속
public class MemberVO extends ComDefaultVO{
	public String id;
	public String password;
	public String name;
	public String phone;
	
	public void setId(String id) {
		this.id = id;
	}
	public String getId() {
		return id;
	}
	
	
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword() {
		return password;
	}
	
	
	public void setName(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPhone() {
		return phone;
	}
}
