package com.scv.station.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 정류장관련 컨트롤러
 */
@Controller
public class StationController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test18.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}