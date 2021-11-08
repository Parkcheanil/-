package com.petworld.util.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.petworld.command.UserVO;

public class UserLoginSuccessHandler implements HandlerInterceptor {

	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		// 테스트용
		System.out.println("로그인 포스트 핸들러 실행됨 테스트");
		
		// mv에 담겨있는 user 객체를 세션에 저장
		ModelMap mv = modelAndView.getModelMap(); //ModelMap은 모델 객체의 구현 인터페이스
		UserVO user = (UserVO)mv.get("user");
		
		// 유저가 있는 경우 메인페이지로 돌아간다
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user", user);
			
			response.sendRedirect(request.getContextPath() + "/mainpage");
		}
	} // 로그인 포스트 핸들러 끝
	
	
	
	
}
