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
	@Autowired
	private IH_UsersService usersService;

	@Override
	public void insertJobPostingInfo(JobPostingDto dto, JobPostingInfoVo vo) throws Exception {
		postingService.insert(dto);
		vo.setPosting_num(postingService.selectMaxPostingNum());
		List<String> company = usersService.selectCompanyName(vo.getUser_id());
		vo.setUser_company(company.get(0));		
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
		List<JobPostingInfoVo> vos = new ArrayList<JobPostingInfoVo>();
		List<JobPostingDto> dtos = postingService.selectAll();
		if(dtos != null) {
			for(int i=0;i<dtos.size();i++) {				
				List<String> tags = tagService.selectPosting_num(dtos.get(i).getPosting_num());
				vos.add(new JobPostingInfoVo(dtos.get(i),tags));
				String id = dtos.get(i).getUser_id();
				List<String> company = usersService.selectCompanyName(id);
				vos.get(i).setUser_company(company.get(0));
			}
		}
		return vos;
	}

	@Override
	public JobPostingInfoVo selectOne(int posting_num) throws Exception {
		JobPostingDto dto = postingService.selectOne(posting_num);
		List<String> tags = tagService.selectPosting_num(posting_num);
		JobPostingInfoVo vo = new JobPostingInfoVo(dto,tags);	
		List<String> company = usersService.selectCompanyName(vo.getUser_id());
		System.out.println(company.get(0));
		vo.setUser_company(company.get(0));
		return vo;
	}

	@Override
	public List<JobPostingInfoVo> selectPostingMain() throws Exception {
		List<JobPostingInfoVo> vos = new ArrayList<JobPostingInfoVo>();
		List<JobPostingDto> dtos = postingService.selectPostingMain();
		if(dtos != null) {
			for(int i=0;i<dtos.size();i++) {
				List<String> tags = tagService.selectPosting_num(dtos.get(i).getPosting_num());
				vos.add(new JobPostingInfoVo(dtos.get(i),tags));
				String id = dtos.get(i).getUser_id();
				List<String> company = usersService.selectCompanyName(id);
				vos.get(i).setUser_company(company.get(0));
			}
		}
		return vos;
	}

}
