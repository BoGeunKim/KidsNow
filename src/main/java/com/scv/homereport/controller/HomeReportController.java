package com.scv.homereport.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 가정통신문관련 컨트롤러
 */
@Controller
public class HomeReportController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test8.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}