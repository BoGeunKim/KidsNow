package com.scv.chief.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.scv.admin.impl.IAdminDAO;
import com.scv.chief.impl.IChiefDAO;
import com.scv.user.impl.IUserDAO;

/**
 * @author jinhy
 * 원장님 컨트롤러
 */
@Controller
public class ChiefController {
	@Autowired
	private SqlSession sqlSession;
	
	// 선생님 승인내역보기
	/**
		* 메소드명   : getTeaSignupList
		* 작성자     : jinhy
		* 작성일자   : 2018. 8. 27. 오후 4:49:11
		* 메소드설명 : 선생님가입신청 내역 조회
	*/
	@RequestMapping("/listTeacherSignup")
	public String getTeaSignupList(ModelMap map)
	{
		IChiefDAO dao = sqlSession.getMapper(IChiefDAO.class);
		
		map.addAttribute("teaSignupList",dao.getTeaSignupList());
		
		return "가입신청리스트페이지";
	}
	
}
