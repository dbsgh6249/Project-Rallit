package com.human.service;

import java.util.List;
import com.human.dto.CompanyDto;

public interface ICompanyService {
	public void insert(CompanyDto dto) throws Exception;
	public CompanyDto select(String company_id) throws Exception;
	public List<CompanyDto> selectAll() throws Exception;
	public void delete(String company_id) throws Exception;
	public void update(CompanyDto dto) throws Exception;
}
