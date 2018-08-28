package com.scv.parent;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mysql.fabric.xmlrpc.base.Value;

@Controller
public class ParentController
{

	@RequestMapping(value="/parent_signup", method = RequestMethod.GET)
	public String Parent_SignUp(Locale locale , Model model )
	{
		
		return "/signup/parentSignupForm";
		
	}
	
	
	@RequestMapping(value="/parent_signup_complete" , method=RequestMethod.GET)
	public String Sign_Complete(Locale locale , Model model)
	{
		
		return "parrent/aa";
	}
	
	@RequestMapping(value="/Ploginform" , method = RequestMethod.GET)
	public String view_login(Locale locale , Model model)
	{
		
		return "parrent/KnLoginForm";
	}
	
	@RequestMapping(value="/move_page" , method=RequestMethod.GET)
	public String move_page(Locale locale , Model model)
	{
		
		return "s_main";
	}
	
	@RequestMapping(value="c_main" , method=RequestMethod.GET)
	public String ClassMain(Locale locale , Model model)
	{
		
		
		return "parrent/ClassMain";
	}
	
	
	@RequestMapping(value="leaveList" , method=RequestMethod.GET)
	public String leaveList(Locale locale , Model model)
	{
		
		return "parrent/ClassLeaveList";
	}
	
}
