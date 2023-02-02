package com.human.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.dto.PostingTagDto;
import com.human.dao.IPostingTagDao;

@Service
public class PostingTagServiceImpl implements IPostingTagService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(PostingTagDto dto) throws Exception {
		IPostingTagDao dao = sqlSession.getMapper(IPostingTagDao.class);
		dao.insert(dto);
	}

	@Override
	public List<PostingTagDto> select(int posting_num) throws Exception {
		IPostingTagDao dao = sqlSession.getMapper(IPostingTagDao.class);
		return dao.select(posting_num);
	}

	@Override
	public void delete(int posting_num) throws Exception {
		IPostingTagDao dao = sqlSession.getMapper(IPostingTagDao.class);
		dao.delete(posting_num);
	}

	@Override
	public void deleteTag(int posting_num, String languageTag) throws Exception {
		IPostingTagDao dao = sqlSession.getMapper(IPostingTagDao.class);
		dao.deleteTag(posting_num, languageTag);
	}

	@Override
	public void update(PostingTagDto dto) throws Exception {
		IPostingTagDao dao = sqlSession.getMapper(IPostingTagDao.class);
		dao.update(dto);
	}

}
