package com.human.dao;

import java.util.List;

import com.human.dto.PostingTagDto;

public interface IPostingTagDao {
	public void insert(PostingTagDto dto) throws Exception;
	public List<PostingTagDto> select(int posting_num) throws Exception;
	public void delete(int posting_num) throws Exception;
	public void deleteTag(int posting_num,String languageTag) throws Exception;
	public void update(PostingTagDto dto) throws Exception;
}
