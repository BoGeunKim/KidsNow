package com.scv.station.impl;

import org.apache.ibatis.annotations.Param;

import com.scv.station.dto.StationDTO;

public interface IStationDAO
{
	public int saveStation(@Param("sDto") StationDTO sDto, @Param("staffCode") int staffCodeO);
}
