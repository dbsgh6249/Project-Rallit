package com.human.service;

import java.util.List;
import com.human.dto.JobPostingDto;

public interface IJobPostingService {
	public void insert(JobPostingDto dto) throws Exception;
	public JobPostingDto selectOne(String posting_num) throws Exception;
	public List<JobPostingDto> selectCompanyPosting() throws Exception;
	public List<JobPostingDto> selectAll() throws Exception;
	public void delete(String posting_num) throws Exception;
	public void update(JobPostingDto dto) throws Exception;
}
