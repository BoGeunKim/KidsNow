package com.scv.admin.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.scv.admin.dto.AdminDTO;
import com.scv.admin.impl.IAdminDAO;
/**
 * @author jinhy
 * 관리자 컨트롤러
 */
@Controller
public class AdminController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/adminMain.do")
	public String index() {
		
		return "admin/adminMain";
	}
	
	@RequestMapping(value="/adminLogin.do")
	public String login()	{
		return "admin/adminLogin";
	}
	
	@SuppressWarnings("static-access")
	@RequestMapping(value="/adminLoginCheck.do" , method = RequestMethod.POST)
	public String loginCheck(AdminDTO dto, HttpSession session){
		
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		System.out.println(dto.getAdminId());
		System.out.println(dao.loginCheck(dto));
		if (toString().valueOf(dao.loginCheck(dto)).equals(null)) {
			session.setAttribute("adminId", dao.loginCheck(dto));
			return "admin/adminMain";
		}
		
		return "admin/adminLogin";
	}
}