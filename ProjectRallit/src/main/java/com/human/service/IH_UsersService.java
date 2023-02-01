package com.human.service;

import java.util.List;
import com.human.dto.H_UsersDto;

public interface IH_UsersService {
	public void insert(H_UsersDto dto) throws Exception;
	public H_UsersDto selectOne(String user_id) throws Exception;
	public List<H_UsersDto> selectAll() throws Exception;
	public void delete(String user_id) throws Exception;
	public void update(H_UsersDto dto) throws Exception;
}
