package com.human.dao;

public interface ICompanyDao {
	public void insert(CompanyDto dto) throws Exception;
	public CompanyDto select(String company_id) throws Exception;
	public List<CompanyDto> selectAll() throws Exception;
	public void delete(String company_id) throws Exception;
	public void update(CompanyDto dto) throws Exception;
}
