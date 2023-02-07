package com.human.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dto.JobPostingDto;
import com.human.dto.PostingTagDto;
import com.human.vo.JobPostingInfoVo;

@Service
public class JobPostingInfoServiceImpl implements IJobPostingInfoService{
	
	@Autowired
	private IJobPostingService postingService;
	@Autowired
	private IPostingTagService tagService;

	@Override
	public void insertJobPostingInfo(JobPostingDto dto, JobPostingInfoVo vo) throws Exception {
		postingService.insert(dto);
		vo.setPosting_num(postingService.selectMaxPostingNum());
		if(vo.getLanguageTags()!=null) {
			for(String tag : vo.getLanguageTags()) {
				if(tag.equals("")) {
					continue;
				}
				PostingTagDto tDto = new PostingTagDto();
				tDto.setPosting_num(vo.getPosting_num());
				tDto.setLanguageTag(tag);
				tagService.insert(tDto);
			}
		}
	}

	@Override
	public List<JobPostingInfoVo> selectAll() throws Exception {
		List<JobPostingInfoVo> jobPostingInfoVos = new ArrayList<JobPostingInfoVo>();
		List<JobPostingDto> jobPostingDtos = postingService.selectAll();
		if(jobPostingDtos != null) {
			for(JobPostingDto dto : jobPostingDtos) {
				List<String> tags = tagService.selectPosting_num(dto.getPosting_num());
				jobPostingInfoVos.add(new JobPostingInfoVo(dto,tags));
			}
		}
		return jobPostingInfoVos;
	}

	@Override
	public JobPostingInfoVo selectOne(int posting_num) throws Exception {
		JobPostingDto dto = postingService.selectOne(posting_num);
		List<String> tags = tagService.selectPosting_num(posting_num);
		JobPostingInfoVo jobPostigInfoVo = new JobPostingInfoVo(dto,tags);		
		return jobPostigInfoVo;
	}

}
