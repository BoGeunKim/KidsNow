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
	private static final Logger logger = LoggerFactory.getLogger(Interceptor.class);
	
	static final String[] EXCLUDE_URL_LIST = {
			"/login"
	};

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String reqUrl = request.getRequestURL().toString();    
//		System.out.println("인터셉터 요청 url : " + reqUrl);
		if (reqUrl.equals("/loginCheck.do")) {
			return true;
		}
		
		for (String target : EXCLUDE_URL_LIST) {
			if (reqUrl.indexOf(target) > -1) {
				return true;
			}
		}

		HttpSession session = request.getSession();
		int adminCode = Integer.parseInt(toString().valueOf(session.getAttribute("adminCode")));
		
		if (adminCode == 0) {
			logger.info(">> interceptor catch!!! userId is null.. ");
			session.invalidate();
			response.sendRedirect(request.getContextPath() + "/login.do");

			return false;
		}

		return true;
	}
}

