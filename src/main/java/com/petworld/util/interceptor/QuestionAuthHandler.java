package com.petworld.util.interceptor;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import com.petworld.command.UserVO;

// 게시글 수정, 삭제에 대한 핸들러
// 작성자만 해당 글을 수정할 수 있다 (화면에서 넘어오는 작성자와 세션에 담겨있는 작성자 비교)
// 화면에서 작성자 값을 넘겨줘야 함
public class QuestionAuthHandler implements HandlerInterceptor{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 세션값
		HttpSession session = request.getSession();
		UserVO vo = (UserVO)session.getAttribute("user");
		
		// 기능 구현이 안 돼서 아직 결과확인을 못함..
		
		// 파라미터값
		String writer = request.getParameter("writer");
		
		// 테스트용
//		System.out.println("세션값: "+ vo);
//		System.out.println("파라미터값: "+ writer);
		
		if(vo != null) {
			if(writer != null) {
				if(vo.getId().equals(writer)) {
					return true;
				}
			}
		}
		
		// 자바측에서 스크립트를 화면으로 보내는 방법
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter pt = response.getWriter();
		pt.println("<script>");
		pt.println("<alert('권한이 없습니다'>");
		pt.println("</script>");
		pt.println("history.go(-1);");
		return false;
	}
	
}
