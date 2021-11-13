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
	
	// 프리 핸들러
	// 1. 컨트롤러 이전에 요청을 가로챈다
	// 2. bean으로 생성하고 가로챌 경로(요청에 대한 경로)를 추가 
	// (스프링 설정파일로 이동해야 한다. 새 설정파일 인터셉터 콘텍스트 만들어줌.
	// -> 스프링 빈 컨피규레이션으로 생성하면 자동으로 설정 넣어준다 -> 이것도 스프링 설정 파일로 쓰겠다고 web.xml에 추가해줘야 한다)
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		System.out.println("유저권한 프리핸들러 실행");
		
		// request 객체를 이용해서 param, session을 얻을 수 있다.
		HttpSession session = request.getSession(); // 리퀘스트에서 세션을 꺼냄
		UserVO vo = (UserVO)session.getAttribute("user"); // 로그인 성공 시 저장해 둔 값이 "user". 
		// getAttribute는 값을 세션에 저장. user를 꺼내서 UserVO 타입으로 캐스팅 해서 vo에 넣는다
		
		// 로그인 페이지 이동 전, 현재 페이지를 Session에 저장
		String query = request.getQueryString();
		System.out.println("query: " + query);
		String uri = request.getRequestURI(); // 현재 페이지의 전체 경로를 가져온다 
		System.out.println("uri: " + uri);												  
		
		// 기존 URI에 parameter가 있을 경우, 이를 포함
	    if(query == null || query.equals("null")) {
	    	query = "";
	    } else {
	        query = "?" + query;
	    }
	    
	    // 로그인이 요구되어 로그인 페이지로 접근한 사용자가 로그인한 이후에 원래 경로로 이동시켜주는 동작.
	    if(request.getMethod().equals("GET")) {
	        System.out.println("dest: " + (uri + query));
	        request.getSession().setAttribute("dest", uri + query);
	    }
		
		
		
		// 리턴값이 true면 컨트롤러를 실행, false라면 컨트롤러를 실행하지 않는다
		if(vo==null) { // 로그인이 안된 시점
			
			// 강제 페이지 이동 (절대경로형태로 전체 경로를 써야 한다)
			response.sendRedirect(request.getContextPath() + "/user/login" ) ;
			return false; // 컨트롤러를 실행하지 않는다

		}else {
			return true;  // 컨트롤러를 실행한다 (컨트롤러를 실행한 뒤에는 로그인 석세스핸들러로 이동)			
		}
		
	}

}
