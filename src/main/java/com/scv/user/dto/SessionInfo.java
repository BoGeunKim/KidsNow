package com.scv.user.dto;

/**
 * @author jinhy
 * 세션저장DTO
 */
public class SessionInfo
{
	int userCode;		//-- 유저코드
	String userName;	//-- 유저명	
	int divCode;		//-- 유저구분코드
	public int getUserCode()
	{
		return userCode;
	}
	public void setUserCode(int userCode)
	{
		this.userCode = userCode;
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public int getDivCode()
	{
		return divCode;
	}
	public void setDivCode(int divCode)
	{
		this.divCode = divCode;
	}
	
}
