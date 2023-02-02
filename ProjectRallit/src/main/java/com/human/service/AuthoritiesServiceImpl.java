package com.human.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dto.AuthoritiesDto;
import com.human.dao.IAuthoritiesDao;

@Service
public class AuthoritiesServiceImpl implements IAuthoritiesService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insertSeeker(AuthoritiesDto dto) throws Exception {
		IAuthoritiesDao dao = sqlSession.getMapper(IAuthoritiesDao.class);
		System.out.println(dto);
		dao.insertSeeker(dto);
	}

	@Override
	public void insertCompany(AuthoritiesDto dto) throws Exception {
		IAuthoritiesDao dao = sqlSession.getMapper(IAuthoritiesDao.class);
		dao.insertCompany(dto);
	}

	@Override
	public List<AuthoritiesDto> selectAll() throws Exception {
		IAuthoritiesDao dao = sqlSession.getMapper(IAuthoritiesDao.class);
		return dao.selectAll();
	}

	@Override
	public List<AuthoritiesDto> selectSeeker() throws Exception {
		IAuthoritiesDao dao = sqlSession.getMapper(IAuthoritiesDao.class);
		return dao.selectSeeker();
	}

	@Override
	public List<AuthoritiesDto> selectCompany() throws Exception {
		IAuthoritiesDao dao = sqlSession.getMapper(IAuthoritiesDao.class);
		return dao.selectCompany();
	}

	@Override
	public void delete(String user_id, String authority) throws Exception {
		IAuthoritiesDao dao = sqlSession.getMapper(IAuthoritiesDao.class);
		dao.delete(user_id, authority);
	}

}
