package com.scv.user.vo;

/**
	 * 클래스명 : ChildInfoVO
	 * 작성자 : jinhy
	 * 작성일자 : 2018. 8. 27. 오후 2:58:40
	 * 설명 : 원아식별코드 입력시 가지고 올 정보들
	 */
public class ChildInfoVO
{
	// 원아명, 원아생년월일, 원아성별, 소속 어린이집명, 소속반, 보호자명, 연락처1, 연락처2
	private String childName, childBirth, genderName, schoolName, className, guardianName, erTel1, erTel2, childAddr;

	public String getChildAddr()
	{
		return childAddr;
	}

	public void setChildAddr(String childAddr)
	{
		this.childAddr = childAddr;
	}

	public String getChildName()
	{
		return childName;
	}

	public void setChildName(String childName)
	{
		this.childName = childName;
	}

	public String getChildBirth()
	{
		return childBirth;
	}

	public void setChildBirth(String childBirth)
	{
		this.childBirth = childBirth;
	}

	public String getGenderName()
	{
		return genderName;
	}

	public void setGenderName(String genderName)
	{
		this.genderName = genderName;
	}

	public String getSchoolName()
	{
		return schoolName;
	}

	public void setSchoolName(String schoolName)
	{
		this.schoolName = schoolName;
	}

	public String getClassName()
	{
		return className;
	}

	public void setClassName(String className)
	{
		this.className = className;
	}

	public String getGuardianName()
	{
		return guardianName;
	}

	public void setGuardianName(String guardianName)
	{
		this.guardianName = guardianName;
	}

	public String getErTel1()
	{
		return erTel1;
	}

	public void setErTel1(String erTel1)
	{
		this.erTel1 = erTel1;
	}

	public String getErTel2()
	{
		return erTel2;
	}

	public void setErTel2(String erTel2)
	{
		this.erTel2 = erTel2;
	}
	
	
}
