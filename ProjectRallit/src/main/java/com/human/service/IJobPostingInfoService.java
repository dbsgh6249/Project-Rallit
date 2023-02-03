package com.human.service;

import java.util.List;

import com.human.dto.JobPostingDto;
import com.human.vo.JobPostingInfoVo;

public interface IJobPostingInfoService {
	public void insertJobPostingInfo(JobPostingDto dto, JobPostingInfoVo vo) throws Exception;
	public List<JobPostingInfoVo> selectAll() throws Exception;
	public JobPostingInfoVo selectOne(int posting_num) throws Exception;
}
