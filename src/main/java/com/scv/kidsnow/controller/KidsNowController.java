package com.scv.kidsnow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author jinhy 키즈나우 메인 컨트롤러
 */
@Controller
public class KidsNowController
{

	@RequestMapping(value = "/knmain", method = RequestMethod.GET)
	public String knMain(Model model)
	{
		
		return "KnMain";
	}

	// 유치원 메인
	@RequestMapping(value = "/SchoolMain", method = RequestMethod.GET)
	public String SchoolMain(Model model)
	{

		return "SchoolMain";
	}

	// 통합로그인 페이지
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public String loginForm(Model model)
	{

		return "KnLoginForm";
	}

}
