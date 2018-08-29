package com.scv.admin.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.scv.admin.dto.AdminDTO;
import com.scv.admin.dto.ChiefAskDTO;
import com.scv.admin.dto.SchoolInfoDTO;
import com.scv.admin.impl.IAdminDAO;
/**
 * @author jinhy
 * 관리자 컨트롤러
 */
@Controller
public class AdminController {

	@Autowired
	private SqlSession sqlSession;
	
	/**
	 * 메소드명 : index
	 * 작성자 : qhrms
	 * 작성일자 : 2018. 8. 26. 오후 4:31:01
	 */
	@RequestMapping(value="/adminMain.do")
	public String index() {
		
		return "admin/adminMain";
	}
	
	/**
	 * 메소드명 : login
	 * 작성자 : qhrms
	 * 작성일자 : 2018. 8. 26. 오후 4:31:05
	 */
	@RequestMapping(value="/login.do")
	public String login(ModelMap mom, HttpSession session)	{
		mom.addAttribute("adminCode", session.getAttribute("adminCode"));
		
		return "admin/adminLogin";
	}
	
	/**
	 * 메소드명 : loginCheck
	 * 작성자 : qhrms
	 * 작성일자 : 2018. 8. 26. 오후 4:31:07
	 */
	@SuppressWarnings("static-access")
	@RequestMapping(value="/loginCheck.do" , method = RequestMethod.POST)
	public String loginCheck(AdminDTO dto, HttpSession session){
		
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		if (!toString().valueOf(dao.loginCheck(dto)).equals(null)) {
			session.setAttribute("adminCode", dao.loginCheck(dto));
			return "redirect:adminMain.do";
		}
		
		return "redirect:login.do";
	}
	
	/**
	 * 메소드명 : logout
	 * 작성자 : qhrms
	 * 작성일자 : 2018. 8. 26. 오후 4:31:12
	 */
	@RequestMapping(value="/logout.do")
	public String logout(HttpSession session)
	{
		session.invalidate();
		
		return "redirect:login.do";
	}
	
	
	@RequestMapping(value="/schoolInfo.do")
	public ModelAndView schoolInfo()
	{
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		ModelAndView mov = new ModelAndView();

		mov.addObject("schoolInfo", dao.schoolInfo());
		mov.setViewName("admin/schoolInfo");
		
		return mov;
	}
	
	@RequestMapping(value="/askList.do")
	public ModelAndView chiefAskList(ModelAndView mov, ChiefAskDTO dto)
	{
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		
		mov.addObject("askList", dao.askList());
		mov.setViewName("admin/askList");
		
		return mov;
	}
	
}