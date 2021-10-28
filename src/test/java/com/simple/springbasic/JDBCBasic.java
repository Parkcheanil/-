package com.simple.springbasic;


import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


//테스트클래스
//스프링프레임워크에서 독립적으로 테스트환경을 junit으로 가동
@RunWith(SpringJUnit4ClassRunner.class)
//테스트환경에서 사용할 스프링설정파일을 작성
@ContextConfiguration("file:src/main/webapp/WEB-INF/config/root-context.xml")
public class JDBCBasic {
	
	@Autowired
	DataSource ds;
	@Test //테스트환경에서 실행
	public void test1() {
		try {
			System.out.println(ds);
			
		} catch (Exception e) {
			System.out.println("테스트: DB 연결 오류");
			e.printStackTrace();
		}
	}
	
//	@Autowired
//	SqlSessionFactory sqlSessionFactory;
//	
//	@Autowired
//	TestMapper testMapper;
//	
//	
//	@Test
//	public void test2() {
//		try {
////			System.out.println(sqlSessionFactory);
////			String time = testMapper.getTime();
////			System.out.println(time);
//			
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
}
