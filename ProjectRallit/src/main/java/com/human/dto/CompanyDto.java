package com.human.dto;

public class CompanyDto {

	private String company_id;
	private String pw;
	private String company_manager;
	private String phone;
	private String company_name;
	private String introduce;
	private String oneword;
	private String companyPicture;
	private String authority;
	
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	@Override
	public String toString() {
		return "CompanyDto [company_id=" + company_id + ", pw=" + pw + ", company_manager=" + company_manager
				+ ", phone=" + phone + ", company_name=" + company_name + ", introduce=" + introduce + 
				", oneword=" + oneword + ", companyPicture="
				+ companyPicture + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((company_id == null) ? 0 : company_id.hashCode());
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
		CompanyDto other = (CompanyDto) obj;
		if (company_id == null) {
			if (other.company_id != null)
				return false;
		} else if (!company_id.equals(other.company_id))
			return false;
		return true;
	}
	public String getCompany_id() {
		return company_id;
	}
	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getCompany_manager() {
		return company_manager;
	}
	public void setCompany_manager(String company_manager) {
		this.company_manager = company_manager;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getCompany_name() {
		return company_name;
	}
	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getOneword() {
		return oneword;
	}
	public void setOneword(String oneword) {
		this.oneword = oneword;
	}
	public String getCompanyPicture() {
		return companyPicture;
	}
	public void setCompanyPicture(String companyPicture) {
		this.companyPicture = companyPicture;
	}
}
//테스트