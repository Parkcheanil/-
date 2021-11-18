package com.petworld.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.PetVO;
import com.petworld.command.UserVO;
import com.petworld.service.PetService;
import com.petworld.service.ProductService;
import com.petworld.service.UserService;
import com.petworld.util.APP_CONSTANT;

@Controller
@RequestMapping("/pet")
public class PetController {
	
	@Autowired
	@Qualifier("petService")
	private PetService petService;
	
	@Autowired
	@Qualifier("productService")
	private ProductService productService;
	
	
	//펫 입력 폼 화면
	@RequestMapping("/petRegister")
	public void registerFrom(Model model) {
		model.addAttribute("list", petService.getList());
	}
	
	//펫 정보 입력 처리
	@RequestMapping("/petRegistForm")
	public String register(@RequestParam("file") MultipartFile file, 
							PetVO vo, RedirectAttributes RA, HttpSession session) {
		
		try {
			System.out.println(file);
			
			UserVO user = (UserVO) session.getAttribute("user");
			String userid = user.getId();
			vo.setUserid(userid);
			
			String fileRealName = file.getOriginalFilename(); //파일명
			Long size = file.getSize(); //파일크기 
			
			//확장자 명을 가져온다.
			String extention= fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
			
			//랜덤16진수
			UUID uuids= UUID.randomUUID();
			String saveFileName = uuids.toString().replace("-", "") + extention; 
			
			//월별 폴더생성
			Date date = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
			String fileloca = sdf.format(date);

			String uploadpath = APP_CONSTANT.uploadPath + fileloca;
			
			File folder = new File(uploadpath);
			if(!folder.exists()) {
				folder.mkdir(); //자바에서 폴더 바로 생성하기
			}
			
			File dir = new File(uploadpath + "/" + saveFileName);
			
			file.transferTo(dir); //파일 아웃풋 작업을 한번에 처리(로컬환경에 저장)
			
			//파일 경로 vo.pphoto에 저장
			vo.setPphoto(dir.getPath());
			vo.setUploadpath(uploadpath);
			vo.setFileloca(fileloca);
			vo.setFilename(saveFileName);
			
			Path path = Paths.get(uploadpath);
			System.out.println(path.toAbsolutePath());
			
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

	//펫 상품 추천, 펫 정보
	@RequestMapping({"/petList", "/petInfo"})
	public void petList(Model model, HttpSession session, UserVO vo) {
		
		UserVO user = (UserVO) session.getAttribute("user");
		String userid = user.getId();
		
		model.addAttribute("userid", userid);
		model.addAttribute("user", user);
		model.addAttribute("list", petService.getList());
		model.addAttribute("productlist1", productService.getCatList());
		model.addAttribute("productlist2", productService.getDogList());
	}
	
	//이미지 요청
	@ResponseBody
	@RequestMapping("/display/{folder}/{file:.+}")
	public ResponseEntity<byte[]> display(@PathVariable("folder") String folder,
						  @PathVariable("file") String file) {
		
		ResponseEntity<byte[]> result = null;
		
		try {
			//파일의 마임타입(
			File path = new File(APP_CONSTANT.uploadPath + folder + "/" + file);
			
			//Files.probeContentType(path.toPath()); //파일 마임타입(헤더에 저장)
			//FileCopyUtils.copyToByteArray(path); //파일 데이터(응답바디에 저장)
			
			HttpHeaders header = new HttpHeaders();
			header.add("Content-type", Files.probeContentType(path.toPath()));
			//(데이터,헤더,상태정보)
			result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(path),
												header, HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	//이미지 비동기 목록
	@RequestMapping("/getList")
	@ResponseBody
	public ArrayList<PetVO> getList() {
		
		ArrayList<PetVO> list = petService.getList();
		
		return list;
	}
	
	//이미지 삭제 처리
	
	//펫 정보 수정 화면
	@RequestMapping("/petUpdate")
	public void petInfo(@RequestParam("pnum") int pnum, Model model) {
		
		PetVO vo = petService.petInfo(pnum);
		model.addAttribute("vo", vo);
	}
	
	//펫 정보 수정 처리
	@RequestMapping("/petUpdateForm")
	public String petUpdate(@RequestParam("file") MultipartFile file,
							PetVO vo, HttpServletRequest req, RedirectAttributes RA) throws Exception {
		
		System.out.println("펫 정보 수정 메서드 실행");
		
		String img = vo.getPphoto();
		System.out.println(img);
		
		
		//새로 첨부한 파일을 등록
		String fileRealName = file.getOriginalFilename();
		String extention= fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
		UUID uuids= UUID.randomUUID();
		String saveFileName = uuids.toString().replace("-", "") + extention;
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMM");
		String fileloca = sdf.format(date);
		String uploadpath = APP_CONSTANT.uploadPath + fileloca;
		File folder = new File(uploadpath);
		if(!folder.exists()) {
			folder.mkdir(); //자바에서 폴더 바로 생성하기
		}
		File dir = new File(uploadpath + "/" + saveFileName);
		
		file.transferTo(dir); //파일 아웃풋 작업을 한번에 처리(로컬환경에 저장)
		
		vo.setPphoto(dir.getPath());
		vo.setUploadpath(uploadpath);
		vo.setFileloca(fileloca);
		vo.setFilename(saveFileName);
			
		System.out.println(vo);
		boolean result = petService.petInfoUpdate(vo);
		
		System.out.println("update여부 : " + result);
		
		if(result) {
			RA.addFlashAttribute("msg", "정상적으로 펫 정보가 수정 되었습니다.");
		} else {
			RA.addFlashAttribute("msg", "펫 정보 수정이 실패하였습니다.");
		}
		
		return "redirect:/pet/petInfo";
	}
	

	//펫 삭제
	@RequestMapping("/petDelete")
	public String petDelete(@RequestParam("pnum") int pnum) {
		
		petService.petDelete(pnum);
		
		return "redirect:/pet/petInfo";
	}
	
}
