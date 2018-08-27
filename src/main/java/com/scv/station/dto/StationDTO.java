package com.scv.station.dto;

public class StationDTO
{
	// 정류장명, 기본주소, 상세주소
	private String stationName, basicAddr, detailAddr;
	// 위도, 경도
	private String latitude, longitude;

	public String getStationName()
	{
		return stationName;
	}

	public void setStationName(String stationName)
	{
		this.stationName = stationName;
	}

	public String getBasicAddr()
	{
		return basicAddr;
	}

	public void setBasicAddr(String basicAddr)
	{
		this.basicAddr = basicAddr;
	}

	public String getDetailAddr()
	{
		return detailAddr;
	}

	public void setDetailAddr(String detailAddr)
	{
		this.detailAddr = detailAddr;
	}

	public String getLatitude()
	{
		return latitude;
	}

	public void setLatitude(String latitude)
	{
		this.latitude = latitude;
	}

	public String getLongitude()
	{
		return longitude;
	}

	public void setLongitude(String longitude)
	{
		this.longitude = longitude;
	}
	
	
}
