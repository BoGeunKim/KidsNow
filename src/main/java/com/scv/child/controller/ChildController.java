package com.scv.child.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 원아 컨트롤러
 */
@Controller
public class ChildController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test3.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}