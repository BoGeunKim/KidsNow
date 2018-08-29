package com.scv.admin.impl;


import com.scv.admin.dto.AdminDTO;
import com.scv.admin.dto.ChiefAskDTO;

public interface IAdminDAO
{
	// 로그인(ID,PW 확인)
	public int loginCheck(AdminDTO dto);
	
	// 유치원 정보 가져오기
	public AdminDTO schoolInfo();
	
	// 원장님신청목록
	public ChiefAskDTO askList();
	
	// 원장님신청 승인
	
	// 원장님신청 거절
}
