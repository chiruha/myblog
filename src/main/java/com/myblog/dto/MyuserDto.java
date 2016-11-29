package com.myblog.dto;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class MyuserDto {
	private int muNum;       // 회원번호   
	private String muId;     // 회원아이디  
	private String muPwd;    // 회원비밀번호 
	private String muName;   // 회원이름   
	private String muPhone;  // 회원전화   
	private String muDel;    // 삭제여부   
	public MyuserDto(int muNum, String muId, String muPwd, String muName, String muPhone, String muDel) {
		super();
		this.muNum = muNum;
		this.muId = muId;
		this.muPwd = muPwd;
		this.muName = muName;
		this.muPhone = muPhone;
		this.muDel = muDel;
	}
	public MyuserDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getMuNum() {
		return muNum;
	}
	public void setMuNum(int muNum) {
		this.muNum = muNum;
	}
	public String getMuId() {
		return muId;
	}
	public void setMuId(String muId) {
		this.muId = muId;
	}
	public String getMuPwd() {
		return muPwd;
	}
	public void setMuPwd(String muPwd) {
		this.muPwd = muPwd;
	}
	public String getMuName() {
		return muName;
	}
	public void setMuName(String muName) {
		this.muName = muName;
	}
	public String getMuPhone() {
		return muPhone;
	}
	public void setMuPhone(String muPhone) {
		this.muPhone = muPhone;
	}
	public String getMuDel() {
		return muDel;
	}
	public void setMuDel(String muDel) {
		this.muDel = muDel;
	}
	@Override
	public String toString(){
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SIMPLE_STYLE);
	}
}
