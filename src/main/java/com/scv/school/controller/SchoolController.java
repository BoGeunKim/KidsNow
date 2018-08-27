package com.scv.school.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 어린이집관련 컨트롤러
 */
@Controller
public class SchoolController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test15.do")
	public String schoolList(ModelMap map) {
		
		return "test";
	}
}