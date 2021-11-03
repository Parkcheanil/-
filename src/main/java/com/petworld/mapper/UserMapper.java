package com.petworld.mapper;
import com.petworld.command.UserVO;

public interface UserMapper {

	// 추상메서드
	public int idCheck(UserVO vo);
	public boolean signUp(UserVO vo);
}
