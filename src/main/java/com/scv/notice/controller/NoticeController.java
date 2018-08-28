package com.scv.notice.controller;

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
 * 공지사항관련 컨트롤러
 */
@Controller
public class NoticeController {

	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="/test12.do")
	public String test(ModelMap map) {
		
		return "test";
	}
	
	//유치원소식_전체공지사항 목록
	@RequestMapping(value = "/SchoolNotice", method = RequestMethod.GET)
	public String SchoolNotice(Model model) 
	{
		return "snotice/SchoolNotice";
	}
	
	//유치원소식_전체공지사항 작성
	@RequestMapping(value = "/SchoolNoticeInsertForm", method = RequestMethod.GET)
	public String SchoolNoticeInsertForm(Model model) 
	{
		return "snotice/SchoolNoticeInsertForm";
	}

	//유치원소식_전체공지사항 본문
	@RequestMapping(value = "/SchoolNoticeContent", method = RequestMethod.GET)
	public String SchoolNoticeContent(Model model) 
	{
		return "snotice/SchoolNoticeContent";
	}
	
	//유치원소식_전체공지사항 수정
	@RequestMapping(value = "/SchoolNoticeUpdate", method = RequestMethod.GET)
	public String SchoolNoticeUpdate(Model model) 
	{
		return "snotice/SchoolNoticeUpdate";
	}
	
	
	//유치원소식_선생님공지사항 목록
	@RequestMapping(value = "/TNotice", method = RequestMethod.GET)
	public String TNotice(Model model) 
	{
		return "snotice/TNotice";
	}
	
	//유치원소식_선생님공지사항 작성
	@RequestMapping(value = "/TNoticeInsertForm", method = RequestMethod.GET)
	public String TNoticeInsertForm(Model model) 
	{
		return "snotice/TNoticeInsertForm";
	}

	//유치원소식_선생님공지사항 본문
	@RequestMapping(value = "/TNoticeContent", method = RequestMethod.GET)
	public String TNoticeContent(Model model) 
	{
		return "snotice/TNoticeContent";
	}
	
	//유치원소식_선생님공지사항 수정
	@RequestMapping(value = "/TNoticeUpdate", method = RequestMethod.GET)
	public String TNoticeUpdate(Model model) 
	{
		return "snotice/TNoticeUpdate";
	}
		

}