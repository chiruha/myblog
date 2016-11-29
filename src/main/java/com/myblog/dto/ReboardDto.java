package com.myblog.dto;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

public class ReboardDto {
	private int reNum;           // 글번호       
	private String reWriter;     // 글쓴이(회원번호) 
	private String reTitle;      // 글제목       
	private String reContent;    // 글내용       
	private String reDate;       // 작성일       
	private int reHit;           // 조회수       
	private int reRef;           // 그룹번호      
	private int reLev;           // 글레벨       
	private int reStep;          // 출력순서
	private String reDel;          // 삭제여부      
	public ReboardDto() {      
		super();
		// TODO Auto-generated constructor stub
	}
	
	public ReboardDto(int reNum, String reWriter, String reTitle, String reContent, String reDate, int reHit, int reRef,
			int reLev, int reStep, String reDel) {
		super();
		this.reNum = reNum;
		this.reWriter = reWriter;
		this.reTitle = reTitle;
		this.reContent = reContent;
		this.reDate = reDate;
		this.reHit = reHit;
		this.reRef = reRef;
		this.reLev = reLev;
		this.reStep = reStep;
		this.reDel = reDel;
	}

	public int getReStep() {
		return reStep;
	}

	public void setReStep(int reStep) {
		this.reStep = reStep;
	}

	public int getReNum() {
		return reNum;
	}
	public void setReNum(int reNum) {
		this.reNum = reNum;
	}
	public String getReWriter() {
		return reWriter;
	}
	public void setReWriter(String reWriter) {
		this.reWriter = reWriter;
	}
	public String getReTitle() {
		return reTitle;
	}
	public void setReTitle(String reTitle) {
		this.reTitle = reTitle;
	}
	public String getReContent() {
		return reContent;
	}
	public void setReContent(String reContent) {
		this.reContent = reContent;
	}
	public String getReDate() {
		return reDate;
	}
	public void setReDate(String reDate) {
		this.reDate = reDate;
	}
	public int getReHit() {
		return reHit;
	}
	public void setReHit(int reHit) {
		this.reHit = reHit;
	}
	public int getReRef() {
		return reRef;
	}
	public void setReRef(int reRef) {
		this.reRef = reRef;
	}
	public int getReLev() {
		return reLev;
	}
	public void setReLev(int reLev) {
		this.reLev = reLev;
	}
	public String getReDel() {
		return reDel;
	}
	public void setReDel(String reDel) {
		this.reDel = reDel;
	}
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this, ToStringStyle.SIMPLE_STYLE);
	}
	
}
