package com.scv.user.dto;

/**
 * @author jinhy
 * 성별 DTO
 */
public class GenderDTO
{
	int genderCode;			//-- 성별코드
	String genderName;		//-- 성별명
	
	public int getGenderCode()
	{
		return genderCode;
	}
	public void setGenderCode(int genderCode)
	{
		this.genderCode = genderCode;
	}
	public String getGenderName()
	{
		return genderName;
	}
	public void setGenderName(String genderName)
	{
		this.genderName = genderName;
	}
}
