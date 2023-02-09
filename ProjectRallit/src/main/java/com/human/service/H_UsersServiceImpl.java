package com.human.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dto.H_UsersDto;
import com.human.dao.IH_UsersDao;

@Service
public class H_UsersServiceImpl implements IH_UsersService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(H_UsersDto dto,HttpServletRequest request) throws Exception {
		IH_UsersDao dao = sqlSession.getMapper(IH_UsersDao.class);
		dao.insert(dto);
	}

	@Override
	public H_UsersDto selectOne(String user_id) throws Exception {
		IH_UsersDao dao = sqlSession.getMapper(IH_UsersDao.class);
		return dao.selectOne(user_id);
	}

	@Override
	public List<H_UsersDto> selectAll() throws Exception {
		IH_UsersDao dao = sqlSession.getMapper(IH_UsersDao.class);
		return dao.selectAll();
	}

	@Override
	public void delete(String user_id) throws Exception {
		IH_UsersDao dao = sqlSession.getMapper(IH_UsersDao.class);
		dao.delete(user_id);
	}

	@Override
	public void update(H_UsersDto dto) throws Exception {
		IH_UsersDao dao = sqlSession.getMapper(IH_UsersDao.class);
		dao.update(dto);
	}

	@Override
	public List<H_UsersDto> selectJobSeeker() throws Exception {
		IH_UsersDao dao = sqlSession.getMapper(IH_UsersDao.class);
		return dao.selectJobSeeker();
	}

	@Override
	public List<H_UsersDto> selectCompany() throws Exception {
		IH_UsersDao dao = sqlSession.getMapper(IH_UsersDao.class);
		return dao.selectCompany();
	}

	@Override
	public List<String> selectCompanyName(String user_id) throws Exception {
		IH_UsersDao dao = sqlSession.getMapper(IH_UsersDao.class);
		return dao.selectCompanyName(user_id);
	}

}
