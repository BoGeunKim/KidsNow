package com.scv.photoboard.dto;

/**
 * @author jinhy
 *	활동사진 게시판
 */
public class PhotoBoardDTO
{
	// 활동사진게시판코드
	private int photoBoardCode;
	private String pBSubject, pBContent, pBRegDate;
	
	
	public int getPhotoBoardCode()
	{
		return photoBoardCode;
	}
	public void setPhotoBoardCode(int photoBoardCode)
	{
		this.photoBoardCode = photoBoardCode;
	}
	public String getpBSubject()
	{
		return pBSubject;
	}
	public void setpBSubject(String pBSubject)
	{
		this.pBSubject = pBSubject;
	}
	public String getpBContent()
	{
		return pBContent;
	}
	public void setpBContent(String pBContent)
	{
		this.pBContent = pBContent;
	}
	public String getpBRegDate()
	{
		return pBRegDate;
	}
	public void setpBRegDate(String pBRegDate)
	{
		this.pBRegDate = pBRegDate;
	}
}
