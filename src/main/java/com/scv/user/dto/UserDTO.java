package com.scv.user.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

/**
	 * 클래스명 : UserDTO
	 * 작성자 : jinhy
	 * 작성일자 : 2018. 8. 27. 오후 12:09:07
	 */
public class UserDTO
{
	// 계정코드, 구분코드, 성별코드
	private int userCode, divCode, genderCode;
	// 아이디, 비밀번호, 이름, 생년월일, 전화번호, 프로필및가족관계증명서
	@NotNull(message="아이디를 입력해 주세요.")
    @NotEmpty(message="아이디를 입력해 주세요.")
    @Size(min=5, max=30, message="아이디는 5자 이상, 30자 이하로 입력해주세요.")
	private String userId;
	
	@NotEmpty(message = "비밀번호를 입력해 주세요.")
    @Pattern(regexp = "((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{6,20})", message = "비밀 번호는 6~20자리로 숫자와 특수 문자가 포함된 영문 대소문자로 입력해 주세요")
	private String userPw;
	
	
	private String userName, userBirth, userTel, userFilePath;
	
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
