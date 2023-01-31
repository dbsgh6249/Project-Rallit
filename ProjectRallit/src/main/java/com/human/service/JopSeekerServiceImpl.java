package com.human.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.human.dto.JobSeekerDto;
import com.human.dao.JobSeekerDao;

@Service
public class JopSeekerServiceImpl implements IJobSeekerService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(JobSeekerDto dto) throws Exception {
		JobSeekerDao dao = sqlSession.getMapper(JobSeekerDao.class);
		dao.insert(dto);
	}

	@Override
	public JobSeekerDto select(String seeker_id) throws Exception {
		JobSeekerDao dao = sqlSession.getMapper(JobSeekerDao.class);
		return dao.select(seeker_id);
	}

	@Override
	public List<JobSeekerDto> selectAll() throws Exception {
		JobSeekerDao dao = sqlSession.getMapper(JobSeekerDao.class);
		return dao.selectAll();
	}

	@Override
	public void delete(String seeker_id) throws Exception {
		JobSeekerDao dao = sqlSession.getMapper(JobSeekerDao.class);
		dao.delete(seeker_id);
	}

	@Override
	public void update(JobSeekerDto dto) throws Exception {
		JobSeekerDao dao = sqlSession.getMapper(JobSeekerDao.class);
		dao.update(dto);
	}

}
