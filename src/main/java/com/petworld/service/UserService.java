package com.petworld.service;
import com.petworld.command.UserVO;

public interface UserService {
	
	// 추상메서드
	public int idCheck(UserVO vo);
	public boolean signUp(UserVO vo);
}
 