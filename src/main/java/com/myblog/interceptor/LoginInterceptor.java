package com.myblog.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{
	Logger logger = Logger.getLogger(this.getClass());
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		if (logger.isInfoEnabled()) {
			logger.info(new Exception().getStackTrace()[0].getMethodName() + "()"
					+ " request [" + (request == null ? "null" : request.getRequestURI())
					+ "] response [" + (response == null ? "null" : response.toString())
					+ "]");
		}
		try{
			HttpSession session = request.getSession(false);
			/*
			  [ getSession(), getSession(true) ]
			  - HttpSession 이 존재하면 현재 HttpSession 반환, 존재하지 않으면 새로session 생성
			 
			  [ getSession(false) ]
			  - HttpSession 이 존재하면 현재 HttpSession 반환, 존재하지 않으면 null 반환
			 */
			
			//Pattern urlPattern = Pattern.compile(
			//		"^(https?):\\/\\/([^:\\/\\s]+)(:([^\\/]*))?((\\/[^\\s/\\/]+)*)?\\/([^#\\s\\?]*)(\\?([^#\\s]*))?(#(\\w*))?$");
			//String reqUri = request.getRequestURI().toString();
			
			if(session.getAttribute("logininfo") == null){
				//response.sendRedirect(request.getContextPath()+"/layout");
				//response.sendRedirect(".interceptorLogin");
				response.sendRedirect("login.do");

				
				
				logger.info("인터셉터 contextpath : "+request.getContextPath() +", ServletPath : "+request.getServletPath()
				+",\n reqeustURL : "+request.getRequestURL()+", pathInfo : "+request.getPathInfo());
				
				return false;
			}
			
		}catch(Exception e){
			logger.debug("InterCeptor Exception : "+e.toString());
		}
		
		return super.preHandle(request, response, handler);
	}
	
	
}
