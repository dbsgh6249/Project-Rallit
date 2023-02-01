package com.human.dao;

import java.util.List;

import com.human.dto.AuthoritiesDto;

public interface IAuthoritiesDao {
	public void insertSeeker(AuthoritiesDto dto) throws Exception;
	public void insertCompany(AuthoritiesDto dto) throws Exception;
	public List<AuthoritiesDto> selectAll() throws Exception;
	public List<AuthoritiesDto> selectSeeker() throws Exception;
	public List<AuthoritiesDto> selectCompany() throws Exception;
	public void delete(String user_id, String authority) throws Exception;
}
