package com.scv.user.dto;

/**
 * @author jinhy
 * 회원구분 DTO
 */
public class UserDivDTO
{
	int divCode;		//-- 회원구분코드
	String divName;		//-- 회원구문명
	
	public int getDivCode()
	{
		return divCode;
	}
	public void setDivCode(int divCode)
	{
		this.divCode = divCode;
	}
	public String getDivName()
	{
		return divName;
	}
	public void setDivName(String divName)
	{
		this.divName = divName;
	}
	
	
}
