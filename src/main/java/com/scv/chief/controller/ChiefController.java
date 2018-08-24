package com.scv.chief.controller;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.scv.admin.impl.IAdminDAO;
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
	
	// 관리자 아이디 비밀번호 확인메소드
	@RequestMapping(value="/test22.do")
	public String checkAdminLogin(ModelMap map) {
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		//dao.checkAdminLogin();
		
		
		map.addAttribute("hh", "테스트");
		
		
		return "test";
	}
}
