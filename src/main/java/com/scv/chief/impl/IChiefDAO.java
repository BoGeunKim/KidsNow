package com.scv.director.impl;

import java.util.ArrayList;

import com.scv.director.dto.TestDTO;

public interface IDirectorDAO {

	// mybatis ���� �׽�Ʈ
	public ArrayList<TestDTO> test();
}
