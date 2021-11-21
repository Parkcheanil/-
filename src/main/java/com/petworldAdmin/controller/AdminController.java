package com.petworldAdmin.controller;

import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.xml.ws.soap.AddressingFeature.Responses;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.CategoryVO;
import com.petworld.command.OrderVO;
import com.petworld.command.ProductVO;
import com.petworld.command.SalesVO;
import com.petworld.command.UserVO;
import com.petworldAdmin.service.AdminService;
import com.petworldAdmin.util.APP_CONSTANT;
import com.petworldAdmin.util.Criteria;
import com.petworldAdmin.util.PageVO;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	
	//관리자메인
	@RequestMapping("/adminhome")
	public void adminhome(Model model) {
		//조회조건 때문에 service 등에 추가해서 리스트 사용
		System.out.println("메인페이지조회");
		ArrayList<UserVO> recUser = adminService.maintable1();
		model.addAttribute("recUser", recUser);
		ArrayList<OrderVO> recOrder = adminService.maintable2();
		model.addAttribute("recOrder", recOrder);
		
	}
	//메인차트
	@PostMapping("api/adminhome")
	public Map<String, Object> mainchart() {
		HashMap<String, Object> recOrder = new HashMap<String, Object>();
		recOrder.put("currentItems", adminService.mainchart());
		return recOrder;
	}

	@RequestMapping("/customer/customer_management")
	public void customer_management(Model model, Criteria cri) {
		System.out.println("고객관리 조회");
		ArrayList<UserVO> list = adminService.customerList(cri);
		model.addAttribute("list", list);
		System.out.println(list.toString());
	}
	
	//수정 페이지
	@RequestMapping("/customer/customer_management_detail")
	public void customer_management_detail(@RequestParam("id")String id, 
			Model model) {
		UserVO vo = adminService.userDetail(id);
		model.addAttribute("vo",vo);
	}
	
	//회원정보 수정
	@RequestMapping("/customer/updateUser")
	public String updateUser(UserVO vo, RedirectAttributes RA) {
		
		boolean result = adminService.updateUser(vo);
		
		System.out.println(result);
		
		if(result) {
			RA.addFlashAttribute("msg", "수정되었습니다.");
			return "redirect:/admin/customer/customer_management?id=";
		}else {
			RA.addFlashAttribute("msg", "수정에 실패하였습니다.");
			return "redirect:/admin/customer/customer_management_detail?id=" + vo.getId();
			}
	}
	
	//주문
	@RequestMapping("/order/order")
	public void admin_order(Model model) {
	System.out.println("확인");

	System.out.println();
	ArrayList<OrderVO> list =adminService.orderList();
	model.addAttribute("list", list);
	System.out.println(list.toString());
}
	
	@RequestMapping("/order/order_detail")
		public void admin_order_detail(@RequestParam("oid") int oid, 
				Model model) {
		OrderVO vo =	adminService.orderDetail(oid);
	      model.addAttribute("vo", vo);
		}
		
	@RequestMapping("order/updateUserOrder")
	   public String updateUser(OrderVO vo, RedirectAttributes RA) {
	      
	      boolean result = adminService.orderUpdate(vo);
	      
	      System.out.println(result);
	      
	      if(result) {
	         RA.addFlashAttribute("msg", "정상 수정되었습니다.");
	         return "redirect:/admin/order/order?oid=";
	      }else {
	         RA.addFlashAttribute("msg", "수정에 실패하였습니다.");
	         return "redirect:/admin/order/order_detail?oid=" + vo.getOid();
	         }
			
	
	}
	//상품
	//@ResponseBody
	@RequestMapping(value="/productManagement/productManagementBoard")
	public ArrayList<ProductVO> productManagement(Model model, Criteria cri) {
			System.out.println("상품조회");
			ArrayList<ProductVO> list = adminService.productList(cri);
			model.addAttribute("list", list);
			//페이지이션
			int total = adminService.getTotal(cri);
			PageVO pageVO = new PageVO(cri, total);
			model.addAttribute("pageVO", pageVO);
			return list;

	}
	
	@RequestMapping("/productManagement/productRegist")
	public void productRegist() {
	
	}
	//상품 insert
	@RequestMapping("/productManagement/pinsertForm")
	public String pinsertForm(ProductVO vo, @RequestParam("file")MultipartFile file) {
		try {
			System.out.println(file);
			
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
			vo.setPimageaddr(dir.getPath());
			vo.setUploadpath(uploadpath);
			vo.setFileloca(fileloca);
			vo.setFilename(saveFileName);
			
			System.out.println(uploadpath);
			System.out.println(fileloca);
			System.out.println(saveFileName);
			
			System.out.println(vo);
			
			boolean result = adminService.pinsert(vo);
			
			
			System.out.println("register 여부 : " + result);
			
			if(result == true) {
				return "redirect:/admin/productManagement/productManagementBoard";
			}
			else {
				return "redirect:/admin/productManagement/productRegist";
			}
				
		}catch (Exception e) {
			System.out.println("업로드중에러");
			e.printStackTrace();
		}
		return "redirect:/admin/productManagement/productManagementBoard";
	}
	
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
	
	//상품수정
	@RequestMapping("/productManagement/productModify")
	public void productDetail(@RequestParam("pid") int pid, Model model) {
		ProductVO vo = adminService.getpContent(pid);
		model.addAttribute("vo", vo);
		
	}
	
	@RequestMapping("/productManagement/updateProduct")
	public String updateProduct(ProductVO vo, RedirectAttributes RA) {
		boolean result = adminService.updateProduct(vo);
		System.out.println("수정여부 : "+ result);
		
		if(result) {
			RA.addAttribute("msg", "수정완료");
			return "redirect:/admin/productManagement/productManagementBoard";
		}else {
			RA.addAttribute("msg", "수정실패");
			return "/admin/productManagement/productModify";
		}
	}
	
	//상품삭제
	@RequestMapping("/productManagement/deleteProduct")
	public String deleteProduct(@RequestParam("pid") int pid, RedirectAttributes RA) {
		boolean result = adminService.deleteProduct(pid);
		System.out.println("삭제여부 : " + result);
		
		if(result) {
			RA.addAttribute("msg_d", "삭제성공");
		}else {
			RA.addAttribute("msg_d", "삭제실패");
		}
		return "redirect:/admin/productManagement/productManagementBoard";
		
	}
	//카테고리
	@RequestMapping("/productManagement/categoryManagementBoard")
	public void categoryBoard(Model model) {
		System.out.println("카테고리조회");
		ArrayList<CategoryVO> list = adminService.categoryList();
		model.addAttribute("list", list);
	}
	
	//판매실적 페이징 & 표 조회
	@RequestMapping("/salesPerformenceBoard")
	public void salesPerformenceBoard(Model model, Criteria cri) {
		System.out.println("실적조회");
		ArrayList<SalesVO> list = adminService.salesList(cri);
		model.addAttribute("list", list);
		
		
		//페이지이션
		int total = adminService.getsalesTotal(cri);
		PageVO pageVO = new PageVO(cri, total);
		System.out.println(total);
		System.out.println(pageVO);
		model.addAttribute("pageVO", pageVO);
		
	}
	
	//판매실적 차트
	@PostMapping("/api/salesPerformenceBoard")
	@ResponseBody
	public Map<String, Object> getCurrentItems() throws Exception {
		HashMap<String, Object> items = new HashMap<String, Object>();
		items.put("currentItems", adminService.getchart());
		return items;
	}
	
	
}
