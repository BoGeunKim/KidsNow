package com.scv.kidsnow.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author jinhy
 * 키즈나우 메인 컨트롤러
 */
@Controller
public class KidsNowController {
	
	private static final Logger logger = LoggerFactory.getLogger(KidsNowController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/knmain", method = RequestMethod.GET)
	public String knMain(Locale locale, Model model) {
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "KnMain";
	}
	
	// 유치원 메인
	@RequestMapping(value = "/SchoolMain", method = RequestMethod.GET)
	public String SchoolMain(Locale locale, Model model) {
		
		return "SchoolMain";
	}
	
	// 통합로그인 페이지
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public String loginForm(Locale locale, Model model) {
		
		return "KnLoginForm";
	}
	
	

	
		
	
}

