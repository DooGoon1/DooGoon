package com.example.demo.Intercepter;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

@Component
public class AuthenInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(
			HttpServletRequest request,
			HttpServletResponse response,
			Object handler
		) throws IOException {
			HttpSession session = request.getSession();
			if ( session.getAttribute("account") == null ) {
				session.setAttribute("error", "Vui lòng đăng nhập");
				response.sendRedirect(request.getContextPath() + "/Login");
				
				return false;
			}
			
			return true;
		}
}
