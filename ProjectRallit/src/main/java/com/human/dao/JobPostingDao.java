package com.human.dao;

import java.util.List;

import com.human.dto.JobPostingDto;

public interface JobPostingDao {
	public void insert(JobPostingDto dto) throws Exception;
	public JobPostingDto read(int textNumber) throws Exception;
	public List<JobPostingDto> readHoldState() throws Exception;
	public List<JobPostingDto> readDelete() throws Exception;
	public void delete(int textNumber) throws Exception;
	public void update(JobPostingDto dto) throws Exception;
	public void updateHoldState(int textNumber) throws Exception;
	public void updateDelete(int textNumber) throws Exception;
	public List<JobPostingDto> selectAll() throws Exception;
}
