package com.scv.childreport.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 원아수첩 컨트롤러
 */
@Controller
public class ChildReportController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}