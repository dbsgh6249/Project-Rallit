package com.human.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dto.JobPostingDto;
import com.human.dao.IJobPostingDao;

@Service
public class JobPostingServiceImpl implements IJobPostingService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(JobPostingDto dto) throws Exception {
		IJobPostingDao dao = sqlSession.getMapper(IJobPostingDao.class);
		dao.insert(dto);
	}

	@Override
	public JobPostingDto selectOne(String posting_num) throws Exception {
		IJobPostingDao dao = sqlSession.getMapper(IJobPostingDao.class);
		return dao.selectOne(posting_num);
	}

	@Override
	public List<JobPostingDto> selectCompanyPosting(String user_id) throws Exception {
		IJobPostingDao dao = sqlSession.getMapper(IJobPostingDao.class);
		return dao.selectCompanyPosting(user_id);
	}

	@Override
	public List<JobPostingDto> selectAll() throws Exception {
		IJobPostingDao dao = sqlSession.getMapper(IJobPostingDao.class);
		return dao.selectAll();
	}

	@Override
	public void delete(String posting_num) throws Exception {
		IJobPostingDao dao = sqlSession.getMapper(IJobPostingDao.class);
		dao.delete(posting_num);
	}

	@Override
	public void update(JobPostingDto dto) throws Exception {
		IJobPostingDao dao = sqlSession.getMapper(IJobPostingDao.class);
		dao.update(dto);
	}
//64
}
