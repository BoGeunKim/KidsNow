package com.scv.user.dto;

public class UserDTO
{
	// 계정코드, 구분코드, 성별코드
	int userCode, divCode, genderCode;
	// 아이디, 비밀번호, 이름, 생년월일, 전화번호, 프로필및가족관계증명서
	String userId, userPw, userName, userBirth, userTel, userFilePath;
	
	public int getUserCode()
	{
		return userCode;
	}
	public void setUserCode(int userCode)
	{
		this.userCode = userCode;
	}
	public int getDivCode()
	{
		return divCode;
	}
	public void setDivCode(int divCode)
	{
		this.divCode = divCode;
	}
	public int getGenderCode()
	{
		return genderCode;
	}
	public void setGenderCode(int genderCode)
	{
		this.genderCode = genderCode;
	}
	public String getUserId()
	{
		return userId;
	}
	public void setUserId(String userId)
	{
		this.userId = userId;
	}
	public String getUserPw()
	{
		return userPw;
	}
	public void setUserPw(String userPw)
	{
		this.userPw = userPw;
	}
	public String getUserName()
	{
		return userName;
	}
	public void setUserName(String userName)
	{
		this.userName = userName;
	}
	public String getUserBirth()
	{
		return userBirth;
	}
	public void setUserBirth(String userBirth)
	{
		this.userBirth = userBirth;
	}
	public String getUserTel()
	{
		return userTel;
	}
	public void setUserTel(String userTel)
	{
		this.userTel = userTel;
	}
	public String getUserFilePath()
	{
		return userFilePath;
	}
	public void setUserFilePath(String userFilePath)
	{
		this.userFilePath = userFilePath;
	}
	
	
}
