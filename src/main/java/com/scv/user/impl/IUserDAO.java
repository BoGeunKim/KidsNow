package com.scv.user.impl;

import java.util.HashMap;

public interface IUserDAO
{
	// 원장님 회원가입
	public String chiefSignup(HashMap<String, Object> map);
	
	// 선생님 회원가입
	public String teacherSignup(HashMap<String, Object> map);
	
	// 학부모 회원가입
	public String parentSignup(HashMap<String, Object> map);
	
	
}
