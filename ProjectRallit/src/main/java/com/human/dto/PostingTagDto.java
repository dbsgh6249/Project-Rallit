package com.human.dto;

public class PostingTagDto {
	private int textNumber;
	private String languageTag;

	@Override
	public String toString() {
		return "PostingTagDto [textNumber=" + textNumber + ", languageTag=" + languageTag + "]";
	}
	public int getTextNumber() {
		return textNumber;
	}
	public void setTextNumber(int textNumber) {
		this.textNumber = textNumber;
	}
	public String getLanguageTag() {
		return languageTag;
	}
	public void setLanguageTag(String languageTag) {
		this.languageTag = languageTag;
	}
}
