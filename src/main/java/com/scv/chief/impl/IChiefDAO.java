package com.scv.chief.impl;

import java.util.ArrayList;

import com.scv.chief.dto.TeaSignupHisVO;

public interface IChiefDAO {

	// 선생님가입신청 내역 조회 
	public ArrayList<TeaSignupHisVO> getTeaSignupList();
}
