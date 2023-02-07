package com.human.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class JobPostingDto {
	private Integer posting_num;		// 글번호
	private String title;			// 글제목
	private String user_id;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date dateCreated;		// 작성일
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date deadline;			// 공고마감일
	private String occ_main;		// 직종
	private String occ_sub;
	private int minCareer;			// 경력 최솟값
	private int maxCareer;			// 경력 최댓값
	private String text1;			// 소개
	private String text2;			// 주요업무
	private String text3;			// 자격요건
	private String text4;			// 우대사항
	private String text5;			// 혜택 및 복지
	private String text6;			// 한마디
	private Integer sal;
	private int viewCnt;
	
	
	
	@Override
	public String toString() {
		return "JobPostingDto [posting_num=" + posting_num + ", title=" + title + ", user_id=" + user_id
				+ ", dateCreated=" + dateCreated + ", deadline=" + deadline + ", occ_main=" + occ_main + ", occ_sub="
				+ occ_sub + ", minCareer=" + minCareer + ", maxCareer=" + maxCareer + ", text1=" + text1 + ", text2="
				+ text2 + ", text3=" + text3 + ", text4=" + text4 + ", text5=" + text5 + ", text6=" + text6 + ", sal="
				+ sal + ", viewCnt=" + viewCnt + "]";
	}


	public Integer getPosting_num() {
		return posting_num;
	}


	public void setPosting_num(Integer posting_num) {
		this.posting_num = posting_num;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}



	public Date getDateCreated() {
		return dateCreated;
	}


	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}


	public Date getDeadline() {
		return deadline;
	}


	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}


	public String getOcc_main() {
		return occ_main;
	}


	public void setOcc_main(String occ_main) {
		this.occ_main = occ_main;
	}


	public String getOcc_sub() {
		return occ_sub;
	}


	public void setOcc_sub(String occ_sub) {
		this.occ_sub = occ_sub;
	}


	public int getMinCareer() {
		return minCareer;
	}


	public void setMinCareer(int minCareer) {
		this.minCareer = minCareer;
	}


	public int getMaxCareer() {
		return maxCareer;
	}


	public void setMaxCareer(int maxCareer) {
		this.maxCareer = maxCareer;
	}


	public String getText1() {
		return text1;
	}


	public void setText1(String text1) {
		this.text1 = text1;
	}


	public String getText2() {
		return text2;
	}


	public void setText2(String text2) {
		this.text2 = text2;
	}


	public String getText3() {
		return text3;
	}


	public void setText3(String text3) {
		this.text3 = text3;
	}


	public String getText4() {
		return text4;
	}


	public void setText4(String text4) {
		this.text4 = text4;
	}


	public String getText5() {
		return text5;
	}


	public void setText5(String text5) {
		this.text5 = text5;
	}


	public String getText6() {
		return text6;
	}


	public void setText6(String text6) {
		this.text6 = text6;
	}


	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}


	public int getViewCnt() {
		return viewCnt;
	}


	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
	}


	public Integer getSal() {
		return sal;
	}


	public void setSal(Integer sal) {
		this.sal = sal;
	}


}
