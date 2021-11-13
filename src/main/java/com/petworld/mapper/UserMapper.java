package com.petworld.mapper;
import com.petworld.command.UserVO;

public interface UserMapper {

	// 추상메서드
	public int idCheck(UserVO vo);
	public boolean signUp(UserVO vo);
	public UserVO login(UserVO vo);
	public UserVO findId(UserVO vo);
	
	// 비번변경 메서드 추가될 예정
	public UserVO findPw(UserVO vo);
}
