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
	
	@RequestMapping(value = "/s_main", method = RequestMethod.GET)
	public String s_main(Locale locale, Model model) {
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "s_main";
	}
	@RequestMapping(value = "/loginform", method = RequestMethod.GET)
	public String loginForm(Locale locale, Model model) {
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "KnLoginForm";
	}

	
	//유치원소개_원장인사말
	@RequestMapping(value = "/sinfo_intro", method = RequestMethod.GET)
	public String sinfo_intro(Locale locale, Model model) 
	{
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "sinfo_intro";
	}
	
	//유치원소개_연혁
	@RequestMapping(value = "/sinfo_history", method = RequestMethod.GET)
	public String sinfo_history(Locale locale, Model model) 
	{
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "sinfo_history";
	}
	
	//유치원소개_원훈 및 상징
	@RequestMapping(value = "/sinfo_symbol", method = RequestMethod.GET)
	public String sinfo_symbol(Locale locale, Model model) 
	{
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "sinfo_symbol";
	}
	
	//유치원소개_원가
	@RequestMapping(value = "/sinfo_song", method = RequestMethod.GET)
	public String sinfo_song(Locale locale, Model model) 
	{
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "sinfo_song";
	}
	
	//유치원소개_유치원현황
	@RequestMapping(value = "/sinfo_condition", method = RequestMethod.GET)
	public String sinfo_condition(Locale locale, Model model) 
	{
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "sinfo_condition";
	}
	
	//유치원소개_찾아오시는길
	@RequestMapping(value = "/sinfo_loc", method = RequestMethod.GET)
	public String sinfo_loc(Locale locale, Model model) 
	{
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "sinfo_loc";
	}
	
	//유치원소개_찾아오시는길
	@RequestMapping(value = "/sinfo_list", method = RequestMethod.GET)
	public String sinfo_list(Locale locale, Model model) 
	{
		/*logger.info("Welcome home! The client locale is {}.", locale);*/
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "sinfo_list";
	}
		
	
}

