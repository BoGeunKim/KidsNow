package com.scv.sinfomenu.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 유치원소개관련 컨트롤러
 */
@Controller
public class SInfoController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test17.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}