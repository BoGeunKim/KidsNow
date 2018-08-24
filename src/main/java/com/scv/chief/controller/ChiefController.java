package com.scv.chief.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.scv.admin.impl.IAdminDAO;
import com.scv.user.impl.IUserDAO;

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
		
		// 아이디, 비밀번호 체크
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		int flagAdminInfo = 0;
		//flagAdminInfo = dao.checkAdminLogin();
		
		// 회원정보(ID, PW) 없을 경우
		if(flagAdminInfo == 0)
		{
			return "";
		}
		// 세션저장
		IUserDAO sessionDao = sqlSession.getMapper(IUserDAO.class);
		
		
		map.addAttribute("hh", "테스트");
		
		
		return "test";
	}
}
