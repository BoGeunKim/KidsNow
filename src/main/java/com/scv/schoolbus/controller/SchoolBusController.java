package com.scv.schoolbus.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 유치원차량관련 컨트롤러
 */
@Controller
public class SchoolBusController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test16.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}