package com.scv.sinfomenu.controller;

import java.util.Locale;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * @author jinhy
 * 유치원소개관련 컨트롤러
 */
@Controller
public class SInfoController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test17.do")
	public String test(ModelMap map) {
		
		return "test";
	}
	

	//유치원소개_원장인사말
	@RequestMapping(value = "/SinfoIntro", method = RequestMethod.GET)
	public String SinfoIntro(Locale locale, Model model) 
	{
		return "sinfo/SinfoIntro";
	}
	
	//유치원소개_연혁
	@RequestMapping(value = "/SinfoHistory", method = RequestMethod.GET)
	public String SinfoHistory(Locale locale, Model model) 
	{
		return "sinfo/SinfoHistory";
	}
	
	//유치원소개_원훈 및 상징
	@RequestMapping(value = "/SinfoSymbol", method = RequestMethod.GET)
	public String SinfoSymbol(Locale locale, Model model) 
	{
		return "sinfo/SinfoSymbol";
	}
	
	//유치원소개_원가
	@RequestMapping(value = "/SinfoSong", method = RequestMethod.GET)
	public String SinfoSong(Locale locale, Model model) 
	{
		return "sinfo/SinfoSong";
	}
	
	//유치원소개_유치원현황
	@RequestMapping(value = "/SinfoCondition", method = RequestMethod.GET)
	public String SinfoCondition(Locale locale, Model model) 
	{
		return "sinfo/SinfoCondition";
	}
	
	//유치원소개_찾아오시는길
	@RequestMapping(value = "/SinfoLoc", method = RequestMethod.GET)
	public String SinfoLoc(Locale locale, Model model) 
	{	
		return "sinfo/SinfoLoc";
	}
	
	//유치원소개_목록수정
	@RequestMapping(value = "/SinfoList", method = RequestMethod.GET)
	public String SinfoList(Locale locale, Model model) 
	{
		return "sinfo/SinfoList";
	}
}