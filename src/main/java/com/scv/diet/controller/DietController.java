
package com.scv.diet.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * @author jinhy
 * 식단관련 컨트롤러(월별식단, 오늘의식단 등)
 */
@Controller
public class DietController {

	@Autowired
	private SqlSession sqlSession;
	
	
	//유치원소식_식단 목록
	@RequestMapping(value = "/DietList", method = RequestMethod.GET)
	public String DietList(Model model) 
	{
		return "snotice/DietList";
	}
	
	//유치원소식_식단 작성
	@RequestMapping(value = "/DietInsertForm", method = RequestMethod.GET)
	public String DietInsertForm(Model model) 
	{
		return "snotice/DietInsertForm";
	}

	//유치원소식_식단 본문
	@RequestMapping(value = "/DietContent", method = RequestMethod.GET)
	public String DietContent(Model model) 
	{
		return "snotice/DietContent";
	}
	
	//유치원소식_식단 수정
	@RequestMapping(value = "/DietUpdate", method = RequestMethod.GET)
	public String DietUpdate(Model model) 
	{
		return "snotice/DietUpdate";
	}
}