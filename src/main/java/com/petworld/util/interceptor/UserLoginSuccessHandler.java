package com.petworld.util.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.petworld.command.UserVO;

public class UserLoginSuccessHandler implements HandlerInterceptor {

	// 2. 포스트 핸들러: 컨트롤러 실행이후에 결과를 가로채 사용
	// 로그인 성공시 이 곳에서 >>>세션을 만들고<<< 리다이렉트를 통해 페이지를 이동해준다
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		// 테스트용
		System.out.println("유저 로그인 포스트 핸들러 실행");
		
		ModelMap mv = modelAndView.getModelMap(); 	
		// 컨트롤러에서 리턴받은 mv를 꺼내서 모델맵 mv에 저장. ModelMap은 모델 객체의 구현 인터페이스.
		UserVO user = (UserVO)mv.get("user"); // mv에 담겨있는 user 객체를 세션에 저장
		
		// 확인과정
		// 유저가 있는 경우 메인페이지로 돌아간다
		if(user != null) {
			HttpSession session = request.getSession(); // request.getSession(); ==> 리퀘스트에서 세션을 꺼내서
			session.setAttribute("user", user);	// 그 세션에 user라는 이름으로 user 객체를 저장
			
		// 유저가 있는 경우 원래 있던 페이지로 돌아가게 하기 (메인페이지가 아니라)	
		//	response.sendRedirect(request.getContextPath() + "/mainpage");
			
			Object dest = session.getAttribute("dest");
			response.sendRedirect(dest != null ? (String)dest : request.getContextPath()+"/mainpage");
		}
	} // 로그인 포스트 핸들러 끝
}
