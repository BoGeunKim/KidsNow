package com.scv.director.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.scv.director.dto.TestDTO;
import com.scv.director.impl.IDirectorDAO;

@Controller
public class DirectorController {

	@Autowired
	private SqlSession sqlSession;
	
	
	// mybatis ���� �׽�Ʈ
	@RequestMapping(value="/test.do")
	public String test(ModelMap map) {
		IDirectorDAO dao = sqlSession.getMapper(IDirectorDAO.class);
		System.out.println("tset");
		
		ArrayList<TestDTO> list = dao.test();
		map.addAttribute("list", list);
		
		for (TestDTO testDTO : list) {
			System.out.println(testDTO.getNum());
			System.out.println(testDTO.getToday());
		}
		
		return "test";
	}
}
