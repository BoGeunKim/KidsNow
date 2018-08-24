package com.scv.notice.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 공지사항관련 컨트롤러
 */
@Controller
public class NoticeController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test12.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}