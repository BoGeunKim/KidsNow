package com.scv.director.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.scv.director.impl.IDirectorDAO;

@Controller
public class DirectorController {

	@Autowired
	private SqlSession sqlSession;
	
	
	// mybatis 연동 테스트
	@RequestMapping(value="/test.do")
	public String test(ModelAndView mav) {
		IDirectorDAO dao = sqlSession.getMapper(IDirectorDAO.class);
		System.out.println("tset");
		mav.addObject("list", dao.test());
		
		return "test";
	}
}
