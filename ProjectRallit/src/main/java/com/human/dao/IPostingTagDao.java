package com.human.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.human.dto.PostingTagDto;

public interface IPostingTagDao {
	public void insert(String languageTag) throws Exception;
	public List<PostingTagDto> select(int posting_num) throws Exception;
	public void delete(int posting_num) throws Exception;
	public void deleteTag(@Param("posting_num")int posting_num,@Param("languageTag")String languageTag) throws Exception;
	public void update(PostingTagDto dto) throws Exception;
}
