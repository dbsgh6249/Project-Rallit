package com.human.dto;

public class H_UsersDto {
	private String user_id;				// 사용자 id
	private String user_pw;				// 사용자 pw
	private String user_name;			// 사용자 이름
	private int user_enabled;			// 권한 (사용 가능 : 1 / x:0)
	private String user_phone;			// 휴대폰번호
	private String user_company;		// 회사명
	private String user_province;		// 주소(광역시/도)
	private String user_city;			// 주소(시/군/구)
	private String user_address;		// 주소(상세)
	@Override
	public String toString() {
		return "H_UsersDto [user_id=" + user_id + ", user_pw=" + user_pw + ", user_name=" + user_name
				+ ", user_enabled=" + user_enabled + ", user_phone=" + user_phone + ", user_company=" + user_company
				+ ", user_province=" + user_province + ", user_city=" + user_city + ", user_address=" + user_address
				+ "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((user_id == null) ? 0 : user_id.hashCode());
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
		H_UsersDto other = (H_UsersDto) obj;
		if (user_id == null) {
			if (other.user_id != null)
				return false;
		} else if (!user_id.equals(other.user_id))
			return false;
		return true;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getUser_enabled() {
		return user_enabled;
	}
	public void setUser_enabled(int user_enabled) {
		this.user_enabled = user_enabled;
	}
	public String getUser_phone() {
		return user_phone;
	}
	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}
	public String getUser_company() {
		return user_company;
	}
	public void setUser_company(String user_company) {
		this.user_company = user_company;
	}
	public String getUser_province() {
		return user_province;
	}
	public void setUser_province(String user_province) {
		this.user_province = user_province;
	}
	public String getUser_city() {
		return user_city;
	}
	public void setUser_city(String user_city) {
		this.user_city = user_city;
	}
	public String getUser_address() {
		return user_address;
	}
	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}
}
