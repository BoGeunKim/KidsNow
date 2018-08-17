package com.scv.parent.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.scv.parent.service.ITestService;
import com.scv.test.service.dao.ITestDAO;

@Service("TestService")
public class TestServiceImpl implements ITestService
{
	
	@Autowired
	private ITestDAO testMapper;

	@Override
	@Transactional
	public List selectTestList() throws Exception
	{
		return testMapper.selectTestList();
	}
	
	
	
}
