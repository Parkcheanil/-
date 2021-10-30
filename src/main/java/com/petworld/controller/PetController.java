package com.petworld.controller;

import java.io.File;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.PetVO;
import com.petworld.service.PetService;
import com.petworld.util.APP_CONSTANT;

@Controller
@RequestMapping("/pet")
public class PetController {
	
	@Autowired
	@Qualifier("petService")
	private PetService petService;
	
	//펫 입력 폼 화면
	@RequestMapping("/petRegister")
	public void registerFrom(Model model) {
		model.addAttribute("list", petService.getList());
	}
	
	//펫 정보 입력 처리
	@RequestMapping("/petRegistForm")
	public String register(@RequestParam("file") MultipartFile file, 
							PetVO vo, RedirectAttributes RA) {
		try {
			System.out.println(file);
			
			String fileRealName = file.getOriginalFilename(); //파일명
			Long size = file.getSize(); //파일크기 
			
			//확장자 명을 가져온다.
			String extention= fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
			
			//랜덤16진수
			UUID uuids= UUID.randomUUID();
			String saveFileName = uuids.toString().replace("-", "") + extention; 
			
			System.out.println("파일실제이름 : " + fileRealName);
			System.out.println("파일크기 : " + size);
			System.out.println("파일확장자 : " + extention);
			System.out.println("저장 파일명 : " + saveFileName);
			
			File dir = new File(APP_CONSTANT.uploadPath + saveFileName);
			
			file.transferTo(dir); //파일 아웃풋 작업을 한번에 처리(로컬환경에 저장)
			
			//파일 경로 vo.pphoto에 저장
			String path = dir.getPath();
			vo.setPphoto(path);
			
			boolean result = petService.petRegistForm(vo);
			
			System.out.println("register 여부 : " + result);
			
			if(result) {
				RA.addFlashAttribute("msg", "정상적으로 펫이 등록 되었습니다.");
			} else {
				RA.addFlashAttribute("msg", "펫 등록이 실패하였습니다.");
			}
			
		} catch (Exception e) {
			System.out.println("========파일업로드중 에러==========");
			e.printStackTrace();
		}
		
		return "redirect:/pet/petList";
	}
	
	//펫 목록
	@RequestMapping("petList")
	public String petList(Model model) {
		
		model.addAttribute("list", petService.getList());
		
		return "pet/petList";
	}
	
	//펫 사진 변경
	@RequestMapping("changImage")
	public String changeImage(PetVO vo, RedirectAttributes RA) {
		System.out.println(vo);
		
		//새로운파일올리기
		//db정보수정
		//원래파일지우기
		
		return "redirect:pet/petList";
	}
	
	
	
	//펫 정보 수정 / 삭제 화면
	@RequestMapping({"/petUpdate", "/petDelete"})
	public String petInfo(@RequestParam("pfirst") String pfirst, Model model) throws InterruptedException {
		
		model.addAttribute("vo", petService.petInfo(pfirst));
		
		Thread.sleep(1000);
		
		return "pet/petUpdate";
	}
	
	//펫 정보 수정
	@RequestMapping("/petUpdateForm")
	public String petInfoUpdate(@RequestParam("file") MultipartFile file, 
								PetVO vo, RedirectAttributes RA) {
		try {
			System.out.println(file);

			String fileRealName = file.getOriginalFilename(); // 파일명
			Long size = file.getSize(); // 파일크기

			//확장자 명을 가져온다.
			String extention = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());

			//랜덤16진수
			UUID uuids = UUID.randomUUID();
			String saveFileName = uuids.toString().replace("-", "") + extention;

			System.out.println("파일실제이름 : " + fileRealName);
			System.out.println("파일크기 : " + size);
			System.out.println("파일확장자 : " + extention);
			System.out.println("저장 파일명 : " + saveFileName);

			File dir = new File(APP_CONSTANT.uploadPath + saveFileName);

			file.transferTo(dir); // 파일 아웃풋 작업을 한번에 처리(로컬환경에 저장)

			//파일 경로 vo.pphoto에 저장
			String path = dir.getPath();
			vo.setPphoto(path);

			boolean result = petService.petRegistForm(vo);

			System.out.println("update 여부 : " + result);

			if (result) {
				RA.addFlashAttribute("msg", "정상적으로 펫 정보가 수정 되었습니다.");
			} else {
				RA.addFlashAttribute("msg", "펫 정보 수정이 실패하였습니다.");
			}

		} catch (Exception e) {
			System.out.println("========파일업로드중 에러==========");
			e.printStackTrace();
		}

		return "redirect:/pet/petList";
	}
}
