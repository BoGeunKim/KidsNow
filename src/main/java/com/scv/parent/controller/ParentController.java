package com.scv.parent.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.scv.parent.service.ITestService;

@Controller
public class ParentController
{
	@Resource(name = "testService")
	private ITestService testService;
	
	@RequestMapping(value="/test.do")
	public String testList(Model model) throws Exception
	{
		List list = testService.selectTestList();
		
		model.addAttribute("list", list);
		
		return "testList";
	}
}
