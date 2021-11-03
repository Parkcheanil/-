package com.petworld.controller;
import java.util.Base64;
import java.util.Base64.Encoder;
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
import com.petworld.command.UserVO;
import com.petworld.service.UserService;

@Controller
@RequestMapping("/user") 
public class UserController {

	
	// 4
	@Autowired
	@Qualifier("userService")
	private UserService userService;
	
	
	// 화면 보여주기 컨트롤러
	@RequestMapping("/login")
	public void login() {
	}
	
	@RequestMapping("/join")
	public void join() {
		
		
		
	}
	
	@RequestMapping("/join_welcome")
	public void join_welcome() {
	}
	
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
	
	@RequestMapping(value="/signUp", method = RequestMethod.POST)
	public String signUp(UserVO vo) {
		System.out.println(vo.toString());
		boolean result = userService.signUp(vo);
		
		if(result) {
			return "redirect:/user/userLogin";
		}else {
			return "redirect:/user/join";
		}
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
