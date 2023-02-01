package com.human.dto;

public class PostingTagDto {
	private int posting_num;
	private String languageTag;
	private String modifyTag; // 수정 후 태그

	public PostingTagDto() {}
	public PostingTagDto(int posting_num, String languageTag) {
		super();
		this.posting_num = posting_num;
		this.languageTag = languageTag;
	}
	
	@Override
	public String toString() {
		return "PostingTagDto [posting_num=" + posting_num + ", languageTag=" + languageTag + "]";
	}
	public int getPosting_num() {
		return posting_num;
	}
	public void setPosting_num(int posting_num) {
		this.posting_num = posting_num;
	}
	public String getLanguageTag() {
		return languageTag;
	}
	public void setLanguageTag(String languageTag) {
		this.languageTag = languageTag;
	}
	public String getModifyTag() {
		return modifyTag;
	}
	public void setModifyTag(String modifyTag) {
		this.modifyTag = modifyTag;
	}
}
