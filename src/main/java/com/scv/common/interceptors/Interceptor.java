package com.scv.common.interceptors;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/**
 * 작성자 : qhrms
 * 클래스명 : Interceptor
 * 작성 일자 : 2018. 8. 26. 오후 4:31:25
 */
public class Interceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler){
		try {
				//logininfo 세션값이 널일경우 
				if(request.getSession().getAttribute("adminCode") == null ){ 
					//로그인페이지로 redirect
					response.sendRedirect("login.do");
				
					return false;
				}
			} catch (Exception e) { 
				e.printStackTrace(); 
			} //널이 아니면 정상적으로 컨트롤러 호출 
		
		return true; 
	}
}

