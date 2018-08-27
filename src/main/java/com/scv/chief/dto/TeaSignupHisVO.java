package com.scv.chief.dto;

/**
	 * 클래스명 : TeaSignupHisVO
	 * 작성자 : jinhy
	 * 작성일자 : 2018. 8. 27. 오후 4:47:26
	 * 클래스 설명 : 선생님가입신청 내역 DTO
	 */
public class TeaSignupHisVO {
	
	private int rowNum;
	private String userName, userBirth, userTel;
	private String signupDate;
	public int getRowNum()
	{
		return rowNum;
	}
	public void setRowNum(int rowNum)
	{
		this.rowNum = rowNum;
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
	public String getSignupDate()
	{
		return signupDate;
	}
	public void setSignupDate(String signupDate)
	{
		this.signupDate = signupDate;
	}
	
}
