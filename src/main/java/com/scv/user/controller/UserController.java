package com.scv.user.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * @author jinhy
 * 사용자관련 컨트롤러(회원가입, 수정, 삭제 등등..)
 */
@Controller
public class UserController {

	@Autowired
	private SqlSession sqlSession;
	
	// 원장님, 선생님, 학부모 로그인
	@RequestMapping(value="/test19.do")
	public String test(ModelMap map) {
		
		return "test";
	}
}