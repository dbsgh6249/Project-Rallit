package com.human.dao;

import java.util.List;

import com.human.dto.JobSeekerDto;

public interface JobSeekerDao {
	public void insert(JobSeekerDto dto) throws Exception;
	public JobSeekerDto select(String seeker_id) throws Exception;
	public List<JobSeekerDto> selectAll() throws Exception;
	public void delete(String seeker_id) throws Exception;
	public void update(JobSeekerDto dto) throws Exception;
}

