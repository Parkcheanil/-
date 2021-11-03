package com.petworld.service;
import java.util.Base64;
import java.util.Base64.Encoder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.petworld.command.UserVO;
import com.petworld.mapper.UserMapper;

// 3. 서비스 어노테이션
@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Autowired
	private UserMapper userMapper;
	
	@Override
	public int idCheck(UserVO vo) {
		return userMapper.idCheck(vo);
	}

	@Override
	public boolean signUp(UserVO vo) {
		
		// 암호화 작업
		Encoder encoder = Base64.getEncoder();
		
		// 암호화 시키고 싶은 데이터를 byte[]형태로 암호화 데이터를 전달
//		byte [] result = encoder.encode( vo.getPw().getBytes() );
//		
//		// 문자열로 바꿔서 저장
//		vo.setPw(new String(result) );
		
		return userMapper.signUp(vo);
	}

}
