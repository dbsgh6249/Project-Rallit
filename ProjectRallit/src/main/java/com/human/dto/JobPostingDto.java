package com.human.dto;

import java.util.Date;

public class JobPostingDto {

	private int textNumber;
	private String title;
	private String company_id;
	private Date dateCreated;
	private Date deadline;
	private String occupation;
	private int minCareer;
	private int maxCareer;
	private String province;
	private String city;
	private String address;
	private String mainwork;
	private String preferential;
	private String welfare;
	private String qualifications;
	

	@Override
	public String toString() {
		return "JobPostingDto [textNumber=" + textNumber + ", title=" + title + ", company_id=" + company_id
				+ ", dateCreated=" + dateCreated + ", deadline=" + deadline + ", occupation=" + occupation
				+ ", minCareer=" + minCareer + ", maxCareer=" + maxCareer + ", province=" + province + ", city=" + city
				+ ", address=" + address + ", mainwork=" + mainwork + ", preferential=" + preferential + ", welfare="
				+ welfare + ", qualifications=" + qualifications + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + textNumber;
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		JobPostingDto other = (JobPostingDto) obj;
		if (textNumber != other.textNumber)
			return false;
		return true;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
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
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
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
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getMainwork() {
		return mainwork;
	}
	public void setMainwork(String mainwork) {
		this.mainwork = mainwork;
	}
	public String getPreferential() {
		return preferential;
	}
	public void setPreferential(String preferential) {
		this.preferential = preferential;
	}
	public String getWelfare() {
		return welfare;
	}
	public void setWelfare(String welfare) {
		this.welfare = welfare;
	}
	public String getQualifications() {
		return qualifications;
	}
	public void setQualifications(String qualifications) {
		this.qualifications = qualifications;
	}
}
