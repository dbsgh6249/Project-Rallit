package com.human.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dao.JobPostingDao;
import com.human.dto.JobPostingDto;
@Service
public class JobPostingServiceImpl implements IJobPostingService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(JobPostingDto dto) throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		dao.insert(dto);
	}

	@Override
	public JobPostingDto read(int textNumber) throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		return dao.read(textNumber);
	}

	@Override
	public List<JobPostingDto> readCompanyPosting(String company_id) throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		return dao.readCompanyPosting(company_id);
	}
	
	@Override
	public List<JobPostingDto> readHoldState() throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		return dao.readHoldState();
	}

	@Override
	public List<JobPostingDto> readDelete() throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		return dao.readDelete();
	}

	@Override
	public void delete(int textNumber) throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		dao.delete(textNumber);
	}

	@Override
	public void update(JobPostingDto dto) throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		dao.update(dto);
	}

	@Override
	public void updateHoldState(int textNumber) throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		dao.updateHoldState(textNumber);
	}

	@Override
	public void updateDelete(int textNumber) throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		dao.updateDelete(textNumber);
	}

	@Override
	public List<JobPostingDto> selectAll() throws Exception {
		JobPostingDao dao = sqlSession.getMapper(JobPostingDao.class);
		return dao.selectAll();
	}

}
