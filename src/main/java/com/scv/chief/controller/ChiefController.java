package com.scv.chief.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.scv.chief.dto.TestDTO;
import com.scv.chief.impl.IChiefDAO;

/**
 * @author jinhy
 * 원장님 컨트롤러
 */
@Controller
public class ChiefController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test.do")
	public String test(ModelMap map) {
		IChiefDAO dao = sqlSession.getMapper(IChiefDAO.class);
		System.out.println("tset");
		
		ArrayList<TestDTO> list = dao.test();
		map.addAttribute("list", list);
		
		for (TestDTO testDTO : list) {
			System.out.println(testDTO.getId());
			System.out.println(testDTO.getName());
		}
		
		return "test";
	}
}
