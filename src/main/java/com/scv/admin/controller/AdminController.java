package com.scv.admin.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.scv.admin.dto.AdminDTO;
import com.scv.admin.dto.AllowListDTO;
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
		ModelAndView mav = new ModelAndView();
		ArrayList<SchoolInfoDTO> list = dao.schoolInfo();
		
		for (SchoolInfoDTO dto : list)
		{
			if (dto.getCarServiceFlag().equals("1"))
			{
				dto.setCarServiceFlag("O");
			}
			else if (dto.getCarServiceFlag().equals("0"))
			{
				dto.setCarServiceFlag("X");
			}
		}
		
		mav.addObject("schoolInfo", list);
		mav.setViewName("admin/schoolInfo");
		
		return mav;
	}
	
	@RequestMapping(value="/askList.do")
	public ModelAndView chiefAskList()
	{
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		ArrayList<ChiefAskDTO> list = dao.askList();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("askList", list);
		mav.setViewName("admin/askList");
		
		return mav;
	}
	
	@RequestMapping(value="/allowList.do")
	public ModelAndView allowList()
	{
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		ArrayList<AllowListDTO> list = dao.allowList();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("allowList", list);
		mav.setViewName("admin/allowList");
		
		return mav;
	}
	
	@RequestMapping(value="/nonAllowList.do")
	public ModelAndView nonAllowList()
	{
		IAdminDAO dao = sqlSession.getMapper(IAdminDAO.class);
		ArrayList<AllowListDTO> list = dao.nonAllowList();
		
		ModelAndView mav = new ModelAndView();
		
		mav.addObject("nonAllowList", list);
		mav.setViewName("admin/nonAllowList");
		
		return mav;
	}
}