package com.human.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.human.dto.AuthoritiesDto;

public interface IAuthoritiesDao {
	public void insertSeeker(AuthoritiesDto dto) throws Exception;
	public void insertCompany(AuthoritiesDto dto) throws Exception;
	public List<AuthoritiesDto> selectAll() throws Exception;
	public List<AuthoritiesDto> selectSeeker() throws Exception;
	public List<AuthoritiesDto> selectCompany() throws Exception;
	public void delete(@Param("user_id") String user_id, @Param("authority") String authority) throws Exception;
}
