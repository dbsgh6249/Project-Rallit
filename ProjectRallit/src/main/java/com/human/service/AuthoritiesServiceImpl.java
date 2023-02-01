package com.human.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dto.AuthoritiesDto;
import com.human.dao.AuthoritiesDao;

@Service
public class AuthoritiesServiceImpl implements IAuthoritiesService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(AuthoritiesDto dto) throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		dao.insert(dto);
	}

	@Override
	public AuthoritiesDto selectOne(String user_id) throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		return dao.selectOne(user_id);
	}

	@Override
	public List<AuthoritiesDto> selectAll() throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		return dao.selectAll();
	}

	@Override
	public void delete(String user_id, String authority) throws Exception {
		AuthoritiesDao dao = sqlSession.getMapper(AuthoritiesDao.class);
		dao.delete(user_id, authority);
	}

}
