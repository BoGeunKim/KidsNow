package com.scv.jobreport.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 업무보고관련 컨트롤러
 */
@Controller
public class JobReportController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test9.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}