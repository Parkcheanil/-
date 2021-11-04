package com.petworld.controller;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.petworld.command.UserVO;
import com.petworld.service.UserService;

@Controller
@RequestMapping("/user") 
public class UserController {

	@Autowired
	@Qualifier("userService")
	private UserService userService;

//  메인 페이지 뷰 컨트롤러 (임시로 적어뒀어요 리퀘스트 매핑 변경 가능)
//	@RequestMapping("/mainpage")
//	public void mainpage() {
//	}	
	
	// 로그인 뷰 컨트롤러
	@RequestMapping("/login")
	public void login() {
	}
	
	// 로그인 기능
	@RequestMapping(value="/login", method=RequestMethod.POST)
	// 세션 매개변수로 
	public ModelAndView login(UserVO vo) {
		UserVO user = userService.login(vo);
		
		// 콘솔 테스트용
		System.out.println(user);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/login");
		
		if(user == null) { // 아이디, 비번이 틀린 경우
			mv.addObject("msg", "아이디 비밀번호를 확인하세요");
		}else {			   // 로그인 성공
			mv.addObject("user", user); // mv에 user 객체를 저장하고 핸들러에서 처리
			
		}
		
		return mv;
	}
	
	
	// 마이페이지(오더) 뷰 컨트롤러(임시로 적어뒀어요 리퀘스트 매핑 변경 가능)
	@RequestMapping("/order")
	public String order() { //HttpSession session) {
		// 반드시!!! 세션값이 있는 지 판별해줘야함. 회원만 쓸 수 있는 페이지!
		
//		if (session.getAttribute("user") == null) {
//			 // 세션이 null이라면 로그인 화면으로 튕겨낸다
//			return "redirect:/user/login";
//		} // ==> 이 코드를 이제 인터셉터에서 처리하게 해줄것. 싹 걷어낼 수 있다
//		System.out.println("마이페이지 컨트롤러 실행");
		
		
		return "user/order";
	}
	
	
	// 로그아웃 페이지: 세션을 싹 무효화 시키고 홈 화면으로 가면 된다
	// 페이지 만들 필요도 없나? 그런듯 -> 메인페이지에서 로그아웃 버튼 서브밋 값으로 주면 될 것 같음
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
	
	// 가입 화면
	@RequestMapping("/join")
	public void join() {
		
	}
	
	// 아이디 중복 요청
	// pom.xml에 jacksom-databind 라이브러리가 필요
	// 아이디 중복 검사, 데이터를 VO로 받는다
	// @RequestBody: 비동기로 넘어오는 요청 데이터에 있는 데이터를 UserVO에 매핑시켜라
	// @ResponseBody: 호출한 곳으로 데이터를 반환하겠다 -> 리졸버뷰가 아니라 ajax를 호출한, 콜백함수로 돌아간다 
	@ResponseBody
	@RequestMapping("/idCheck")
	public ResponseEntity<Integer> idCheck(@RequestBody UserVO vo) {
		
		System.out.println(vo.toString());
		// vo안에 아이디가 들어있다
		// 넘어오는 것 확인했으니, 서비스 매퍼 시작
		// 성공 실패에 대한 결과를 result가 받는다
		int result = userService.idCheck(vo);
		
		ResponseEntity<Integer> entity = null;
		
		try {
			// 첫 번째 매개변수: 실행의 결과를 담는다 
			// 두 번째 매개변수: Http 상태정보
			// body: 필요한 데이터 정보를 실어줄 것
			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", "application/json");
			entity = new ResponseEntity<Integer>(result, header, HttpStatus.OK);

		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return entity;
	 }
	
	// 회원가입 기능
	@RequestMapping(value="/signUp", method = RequestMethod.POST)
	public String signUp(UserVO vo) {
		System.out.println(vo.toString());
		boolean result = userService.signUp(vo);
		
		if(result) {
			return "redirect:/user/login";
		}else {
			return "redirect:/user/join";
		}
	}
	
	// 환영 페이지
	@RequestMapping("/join_welcome")
	public void join_welcome() {
	}
	
	@RequestMapping("/search_ID")
	public void search_ID() {
	}
	
	@RequestMapping("/search_PW")
	public void search_PW() {
	}
	
	@RequestMapping("/searchID_result")
	public void searchID_result() {
	}
	
	@RequestMapping("/searchPW_result")
	public void searchPW_result() {
	}
	
	@RequestMapping("/forget_ID")
	public String forget_ID() {
		return "user/search_ID";
	}
	
	@RequestMapping("/forget_PW")
	public String forget_PW() {
		return "user/search_PW";
	}
	
	
	
}
