package com.human.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dto.CompanyDto;
import com.human.dao.CompanyDao;
@Service
public class CompanyServiceImpl implements ICompanyService {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insert(CompanyDto dto) throws Exception {
		CompanyDao dao = sqlSession.getMapper(CompanyDao.class);
		dao.insert(dto);
	}

	@Override
	public CompanyDto select(String company_id) throws Exception {
		CompanyDao dao = sqlSession.getMapper(CompanyDao.class);
		return dao.select(company_id);
	}

	@Override
	public List<CompanyDto> selectAll() throws Exception {
		CompanyDao dao = sqlSession.getMapper(CompanyDao.class);
		return dao.selectAll();
	}

	@Override
	public void delete(String company_id) throws Exception {
		CompanyDao dao = sqlSession.getMapper(CompanyDao.class);
		dao.delete(company_id);
	}

	@Override
	public void update(CompanyDto dto) throws Exception {
		CompanyDao dao = sqlSession.getMapper(CompanyDao.class);
		dao.update(dto);
	}

}
