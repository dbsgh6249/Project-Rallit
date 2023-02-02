package com.human.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import com.human.dao.IFileUploadDao;

public class FileUploadServiceImpl implements IFileUploadService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<String> getFiles(int posting_num) throws Exception {
		IFileUploadDao dao = sqlSession.getMapper(IFileUploadDao.class);
		return dao.getFiles(posting_num);
	}

	@Override
	public void deleteFile(int posting_num) throws Exception {
		IFileUploadDao dao = sqlSession.getMapper(IFileUploadDao.class);
		dao.deleteFile(posting_num);
	}

	@Override
	public void addFile(String fullName, int posting_num) throws Exception {
		IFileUploadDao dao = sqlSession.getMapper(IFileUploadDao.class);
		dao.addFile(fullName, posting_num);
	}

}
