package com.scv.school.dto;

/**
 * @author jinhy
 * 어린이집DTO
 */
public class SchoolDTO
{
	// 어린이집, 어린이집유형구분코드, 정원수, 보육교직원수
	// 보육실수, 놀이터수, CCTV수, 통학차량운영여부, 서비스이용여부
	int schoolCode, schoolTypeCode, maximum, teacherCount
		, nerseryNum, playgroundNum, cctvNum, carServiceFlag, availabilityFlag;
	
	// 위도, 경도
	double slatitute, slongitude;
	
	// 어린이집명, 시도명, 시군구명, 어린이집전화번호, 식별코드
	String schoolName, sido, sigungu, schoolTel, sidentification;

	public int getSchoolCode()
	{
		return schoolCode;
	}

	public void setSchoolCode(int schoolCode)
	{
		this.schoolCode = schoolCode;
	}

	public int getSchoolTypeCode()
	{
		return schoolTypeCode;
	}

	public void setSchoolTypeCode(int schoolTypeCode)
	{
		this.schoolTypeCode = schoolTypeCode;
	}

	public int getMaximum()
	{
		return maximum;
	}

	public void setMaximum(int maximum)
	{
		this.maximum = maximum;
	}

	public int getTeacherCount()
	{
		return teacherCount;
	}

	public void setTeacherCount(int teacherCount)
	{
		this.teacherCount = teacherCount;
	}

	public int getNerseryNum()
	{
		return nerseryNum;
	}

	public void setNerseryNum(int nerseryNum)
	{
		this.nerseryNum = nerseryNum;
	}

	public int getPlaygroundNum()
	{
		return playgroundNum;
	}

	public void setPlaygroundNum(int playgroundNum)
	{
		this.playgroundNum = playgroundNum;
	}

	public int getCctvNum()
	{
		return cctvNum;
	}

	public void setCctvNum(int cctvNum)
	{
		this.cctvNum = cctvNum;
	}

	public int getCarServiceFlag()
	{
		return carServiceFlag;
	}

	public void setCarServiceFlag(int carServiceFlag)
	{
		this.carServiceFlag = carServiceFlag;
	}

	public int getAvailabilityFlag()
	{
		return availabilityFlag;
	}

	public void setAvailabilityFlag(int availabilityFlag)
	{
		this.availabilityFlag = availabilityFlag;
	}

	public double getSlatitute()
	{
		return slatitute;
	}

	public void setSlatitute(double slatitute)
	{
		this.slatitute = slatitute;
	}

	public double getSlongitude()
	{
		return slongitude;
	}

	public void setSlongitude(double slongitude)
	{
		this.slongitude = slongitude;
	}

	public String getSchoolName()
	{
		return schoolName;
	}

	public void setSchoolName(String schoolName)
	{
		this.schoolName = schoolName;
	}

	public String getSido()
	{
		return sido;
	}

	public void setSido(String sido)
	{
		this.sido = sido;
	}

	public String getSigungu()
	{
		return sigungu;
	}

	public void setSigungu(String sigungu)
	{
		this.sigungu = sigungu;
	}

	public String getSchoolTel()
	{
		return schoolTel;
	}

	public void setSchoolTel(String schoolTel)
	{
		this.schoolTel = schoolTel;
	}

	public String getSidentification()
	{
		return sidentification;
	}

	public void setSidentification(String sidentification)
	{
		this.sidentification = sidentification;
	}
	
}
