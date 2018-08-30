package com.scv.admin.impl;


import java.util.ArrayList;

import com.scv.admin.dto.AdminDTO;
import com.scv.admin.dto.AllowListDTO;
import com.scv.admin.dto.ChiefAskDTO;
import com.scv.admin.dto.SchoolInfoDTO;

public interface IAdminDAO
{
	// 로그인(ID,PW 확인)
	public int loginCheck(AdminDTO dto);
	
	// 유치원 정보 가져오기
	public ArrayList<SchoolInfoDTO> schoolInfo();
	
	// 원장님신청목록
	public ArrayList<ChiefAskDTO> askList();
	
	// 원장님신청 승인
	public ArrayList<AllowListDTO> allowList();
	
	// 원장님신청 거절
	public ArrayList<AllowListDTO> nonAllowList();
}
