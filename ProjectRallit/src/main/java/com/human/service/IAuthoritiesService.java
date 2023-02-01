package com.human.service;

import java.util.List;
import com.human.dto.AuthoritiesDto;

public interface IAuthoritiesService {
	public void insert(AuthoritiesDto dto) throws Exception;
	public AuthoritiesDto selectOne(String user_id) throws Exception;
	public List<AuthoritiesDto> selectAll() throws Exception;
	public void delete(String user_id, String authority) throws Exception;
}
