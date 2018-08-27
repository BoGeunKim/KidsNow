package com.scv.user.impl;

import java.util.HashMap;

import com.scv.user.dto.GenderDTO;
import com.scv.user.vo.ChildInfoVO;

public interface IUserDAO
{
	// 성별 가져오기
	public GenderDTO getGender();
	
	// 원장님 회원가입
	public String chiefSignup(HashMap<String, Object> map);
	
	// 선생님 회원가입
	public String teacherSignup(HashMap<String, Object> map);
	
	// 학부모 회원가입
	public String parentSignup(HashMap<String, Object> map);
	
	// 아이디 중복확인
	public int userIdCheck(String userId);
	
	// 학부모가 원아식별코드 입력시 가지고 올 데이터
	public ChildInfoVO getChildInfo(int childIdentifyCode);
}
