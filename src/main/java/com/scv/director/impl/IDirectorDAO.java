package com.scv.director.impl;

import java.util.ArrayList;

import com.scv.director.dto.TestDTO;

public interface IDirectorDAO {

	// mybatis 연동 테스트
	public ArrayList<TestDTO> test();
}
