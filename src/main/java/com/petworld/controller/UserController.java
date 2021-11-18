package com.petworld.controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
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
	
	// 로그인 뷰 컨트롤러
	@RequestMapping(value = "/login", method=RequestMethod.GET)
	public void login() {
	}
	
	// 로그인 기능 (로그인 버튼을 누르면 이리로 들어온다)
	@RequestMapping(value="/login", method=RequestMethod.POST)
	// 세션 매개변수로 
	public ModelAndView login(UserVO vo) {

		UserVO user = userService.login(vo); 	  // 이 부분 다시보기
		System.out.println("유저 컨트롤러:" + user);  // 콘솔 테스트용

		ModelAndView mv = new ModelAndView();
		mv.setViewName("user/login");  // 나갈 경로
		
		if(user == null) { // 아이디, 비번이 틀린 경우
			mv.addObject("msg", "아이디 비밀번호를 확인하세요");
		}else { // 로그인 성공
			mv.addObject("user", user); 
			// mv에 user 객체를 "user"라는 이름으로 저장하고, mv 객체를 석세스핸들러에 반환해서 처리
		}
		return mv;
	}
	
	// 로그아웃 페이지: 세션을 싹 무효화 시키고 홈 화면으로 가면 된다
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/mainpage";
	}
	
	// 가입 화면
	@RequestMapping("/join")
	public void join() {
	}
	
	// 아이디 중복 요청 : 비동기로 제이슨 형태를 띄고 넘어온다!!
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
	 } // 콜백 함수 석세스로 돌아감
	
    // 아이디 찾기 페이지 이동 (아이디찾기 버튼 -> findid() 함수 실행 -> var url="find_id_form";이 넘어온다 )
	@RequestMapping(value="find_id_form")
	public String findIdView() {
		return "user/findId"; // 아이디 페이지로 이동!
	}
	
    // 아이디 찾기 실행
	@RequestMapping(value="find_id", method=RequestMethod.POST)
	public String findIdAction(UserVO vo, Model model) {
		UserVO user = userService.findId(vo);

		if(user == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("id", user.getId());
		}
		return "user/findId";
	}
	
    // 비밀번호 찾기 페이지로 이동
	@RequestMapping(value="find_password_form", method=RequestMethod.GET)
	public String findPasswordView() {
		return "user/findPassword";
	}
	
	// 비번 변경: 해당 이메일로 임시 비밀번호가 전달 되었습니다 출력 후 로그인으로 이동 추가할 것
    // 비번 찾기 실행
	@RequestMapping(value="find_pw", method=RequestMethod.POST)
	public String findPwAction(UserVO vo, Model model) {
		UserVO user = userService.findPw(vo);

		if(user == null) { 
			model.addAttribute("check", 1);
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("id", user.getId());
		}
		return "user/findPassword";
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
	
	// 카카오 로그인
	@CrossOrigin
	@GetMapping(value = "/loginpage_kakao_callback") 
	public String loginpage_kakao_callback(HttpServletRequest request, HttpServletResponse response, 
										   HttpSession session, Model model) throws Exception {
//		
//		
//		System.out.println(request.getParameter("code"));
//		System.out.println(request.getParameter("state"));
//		System.out.println(request.getParameter("error"));
//		System.out.println(request.getParameter("error_description"));
		
//		
//		UrlPathHelper urlPathHelper = new UrlPathHelper(); 
//		String originalURL = urlPathHelper.getOriginatingRequestUri(request); 
//		
//		Map<String, String[]> paramMap = request.getParameterMap(); 
//		
//
//		
//		Iterator<String> keyData = paramMap.keySet().iterator(); 
//		
//		
//		CommonData dto = new CommonData();
//		
//		while (keyData.hasNext()) { 
//			String key = ((String) keyData.next()); 
//			String[] value = paramMap.get(key);
//			System.out.println(value);
//			//dto.put(key, value[0].toString()); 
//		}
		
//		String url = "https://kauth.kakao.com/oauth/token"; 
//		
//		RestTemplate restTemplate = new RestTemplate(); 
//		HttpHeaders headers = new HttpHeaders(); 
//		
//		headers.setContentType(MediaType.APPLICATION_FORM_URLENCODED); 
//		
//		LinkedMultiValueMap<String, String> map = new LinkedMultiValueMap<String, String>(); 
//		
//		map.add("client_id", "REST 앱키를 입력하세요."); 
//		
//		String redirect_url = "http://localhost:8080/user/loginpage_kakao_callback"; 
//		map.add("redirect_uri", redirect_url); 
//		map.add("grant_type", "authorization_code"); 
//		map.add("code", dto.get("code")); 
//		
//		HttpEntity<LinkedMultiValueMap<String, String>> request2 = new HttpEntity<LinkedMultiValueMap<String, String>>( map, headers); 
//		CommonData response2 = restTemplate.postForObject(url, request2, CommonData.class); 
//		map.clear(); 
//		
//		model.addAttribute("access_token", response2.get("access_token")); 
//		*/
		return "/user/loginpage_kakao_callback";
//		 
		}
}
