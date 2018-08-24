package com.scv.photoboard.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 활동사진 게시판관련 컨트롤러
 */
@Controller
public class PhotoBoardController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test13.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}