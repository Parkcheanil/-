package com.petworld.util.interceptor;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.petworld.command.UserVO;

// 게시글 수정, 삭제에 대한 핸들러
// 작성자만 해당 글을 수정할 수 있다 (화면에서 넘어오는 작성자와 세션에 담겨있는 작성자 비교)
// 화면에서 작성자 값을 넘겨줘야 함
public class AdminAuthHandler implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("user");
		// 세션값
		System.out.println("세션값: "+ vo);
		System.out.println("들어온 아이디값 " + vo.getId());
		
		if(vo != null) {						 // 세션값이 있을 때 
				if(vo.getId().equals("admin")) { // 그리고 그 작성자와 = 아이디가 같을때
					return true;				 // 컨트롤러를 실행한다
				}
		} // if end
		
		// 자바측에서 스크립트를 화면으로 보내는 방법
		/*
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pt = response.getWriter();
		pt.println("<script>");
		pt.println("<alert('권한이 없습니다'>");
		pt.println("</script>");
		*/
		return false;
	} // 오버라이드 end
	
} // class end
