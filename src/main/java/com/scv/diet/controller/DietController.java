
package com.scv.diet.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 식단관련 컨트롤러(월별식단, 오늘의식단 등)
 */
@Controller
public class DietController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test6.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}