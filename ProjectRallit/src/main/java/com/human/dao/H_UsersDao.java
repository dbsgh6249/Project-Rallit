package com.human.dao;

import java.util.List;

import com.human.dto.H_UsersDto;

public interface H_UsersDto {
	public void insert(H_UsersDto dto) throws Exception;
	public H_UsersDto selectOne(String user_id) throws Exception;
	public List<AuthoritiesDto> selectAll() throws Exception;
	public void delete(String user_id) throws Exception;
	public void update(H_UsersDto dto) throws Exception;
}
