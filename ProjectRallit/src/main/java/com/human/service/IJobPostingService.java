package com.human.service;

import java.util.List;
import com.human.dto.JobPostingDto;

public interface IJobPostingService {
	public void insert(JobPostingDto dto) throws Exception;
	public JobPostingDto selectOne(int posting_num) throws Exception;
	public List<JobPostingDto> selectCompanyPosting(String user_id) throws Exception;
	public List<JobPostingDto> selectAll() throws Exception;
	public List<String> selectJobGroup() throws Exception;
	public void delete(int posting_num) throws Exception;
	public void update(JobPostingDto dto) throws Exception;
	public void updateJobGroupVcnt(String occ_sub) throws Exception;
	public void viewUpdate(int posting_num) throws Exception;
	public Integer selectMaxPostingNum() throws Exception;
}