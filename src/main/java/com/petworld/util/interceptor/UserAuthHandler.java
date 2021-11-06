package com.petworld.util.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.petworld.command.UserVO;

// 유저 권한 클래스
// 요청을 가로채 검사하는 인터셉터 클래스
public class UserAuthHandler implements HandlerInterceptor {

	// alt + shift + s 눌러서 오버라이드 가능 메서드 볼 수 있다
	
	// 1. 컨트롤러 이전에 요청을 가로챈다
	// 2. bean으로 생성하고 가로챌 경로를 추가 
	// (스프링 설정파일로 이동해야 한다. 새 설정파일 만들어줌. 인터셉터 콘텍스트- 스프링 빈 컨피규레이션으로 생성하면 자동으로 설정 넣어준다)
	// 이것도 스프링 설정 파일로 쓰겠다고 web.xml에 추가해줘야 한다
	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		// request 객체를 이용해서 param, session을 얻을 수 있다
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("user");
		
		// 리턴값이 true면 컨트롤러를 실행, false라면 컨트롤러를 실행하지 않는다
		if(vo==null) { // 로그인이 안된 시점
			response.sendRedirect(request.getContextPath() + "/user/login" ) ; // 절대경로
			return false; // 컨트롤러를 실행하지 않는다

		}else {
			return true;  // 컨트롤러를 실행한다			
		}
		
	}

}
