package com.human.dto;

public class JobSeekerDto {
	private String seeker_id; // 사용자 ID
	private String pw;		// 사용자 PW
	private String phone;	// 휴대폰번호
	private String province; // 도/특별/광역시
	private String city;	// 시/군/구
	private String address;	// 상세주소
	private String cvnum;	// 이력서
	
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCvnum() {
		return cvnum;
	}
	public void setCvnum(String cvnum) {
		this.cvnum = cvnum;
	}
	@Override
	public String toString() {
		return "JobSeeker [seeker_id=" + seeker_id + ", pw=" + pw + ", phone=" + phone + ", city=" + city + ", address="
				+ address + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((seeker_id == null) ? 0 : seeker_id.hashCode());
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
		JobSeekerDto other = (JobSeekerDto) obj;
		if (seeker_id == null) {
			if (other.seeker_id != null)
				return false;
		} else if (!seeker_id.equals(other.seeker_id))
			return false;
		return true;
	}
	public String getSeeker_id() {
		return seeker_id;
	}
	public void setSeeker_id(String seeker_id) {
		this.seeker_id = seeker_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
