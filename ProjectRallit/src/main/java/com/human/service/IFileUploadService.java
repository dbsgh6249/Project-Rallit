package com.human.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface IFileUploadService {
	
	public List<String> getFiles(int posting_num) throws Exception;
	public void deleteFile(int posting_num) throws Exception;
	public void addFile(@Param("fullName") String fullName,@Param("posting_num") int posting_num) throws Exception;
}
