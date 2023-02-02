package com.human.dao;

import java.util.List;

import com.human.dto.JobPostingDto;

public interface IJobPostingDao {
	public void insert(JobPostingDto dto) throws Exception;
	public JobPostingDto selectOne(String posting_num) throws Exception;
	public List<JobPostingDto> selectCompanyPosting(String user_id) throws Exception;
	public List<JobPostingDto> selectAll() throws Exception;
	public void delete(String posting_num) throws Exception;
	public void update(JobPostingDto dto) throws Exception;
}
//6