package com.human.service;

import java.util.List;

import com.human.dto.PostingTagDto;

public interface IPostingTagService {
	public void insert(PostingTagDto dto) throws Exception;
	public List<PostingTagDto> select(int textNumber) throws Exception;
	public void delete(int textNumber) throws Exception;
	public void deleteTag(int textNumber,String languageTag) throws Exception;
	public void update(PostingTagDto dto) throws Exception;
}
