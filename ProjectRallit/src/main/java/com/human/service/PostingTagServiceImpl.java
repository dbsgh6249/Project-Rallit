package com.human.service;

import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.human.dto.PostingTagDto;
import com.human.dao.PostingTagDao;

@Service
public class PostingTagServiceImpl implements IPostingTagService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(PostingTagDto dto) throws Exception {
		PostingTagDao dao = sqlSession.getMapper(PostingTagDao.class);
		dao.insert(dto);
	}

	@Override
	public List<PostingTagDto> select(int textNumber) throws Exception {
		PostingTagDao dao = sqlSession.getMapper(PostingTagDao.class);
		return dao.select(textNumber);
	}

	@Override
	public void delete(int textNumber) throws Exception {
		PostingTagDao dao = sqlSession.getMapper(PostingTagDao.class);
		dao.delete(textNumber);
	}

	@Override
	public void deleteTag(int textNumber, String languageTag) throws Exception {
		PostingTagDao dao = sqlSession.getMapper(PostingTagDao.class);
		dao.deleteTag(textNumber, languageTag);
	}

	@Override
	public void update(PostingTagDto dto) throws Exception {
		PostingTagDao dao = sqlSession.getMapper(PostingTagDao.class);
		dao.update(dto);
	}
// test
}
