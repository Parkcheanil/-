package com.petworldAdmin.Controller;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petworld.command.OrderVO;
import com.petworld.command.ProductVO;
import com.petworld.command.SalesVO;
import com.petworld.command.UserVO;
import com.petworld.service.AdminService;
import com.petworld.util.APP_CONSTANT;
import com.petworld.util.Criteria;
import com.petworld.util.PageVO;


@Controller
@RequestMapping("/admin")
public class AdminController {
	
	//관리자메인
	@RequestMapping("/adminhome")
	public void adminhome() {
		
	}
	
	@Autowired
	@Qualifier("adminService")
	private AdminService adminService;
	
	
	@RequestMapping("/customer_management")
	public void customer_management(Model model) {
	System.out.println("고객관리 조회");
	
	ArrayList<UserVO> list = adminService.customerList();
	model.addAttribute("list", list);
	System.out.println(list.toString());
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
		
	@RequestMapping("order/updateUser")
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
	@RequestMapping("/productManagement/productManagementBoard")
	public void productManagement(Model model, Criteria cri) {
			System.out.println("상품조회");
			System.out.println(cri.toString());
			ArrayList<ProductVO> list = adminService.productList(cri);
			model.addAttribute("list", list);
			
			//페이지이션
			int total = adminService.getTotal(cri);
			PageVO pageVO = new PageVO(cri, total);
			model.addAttribute("pageVO", pageVO);
			System.out.println(pageVO.toString());

	}
	@RequestMapping("/productManagement/productRegist")
	public void productRegist() {
	
	}
	//상품 insert
	@RequestMapping("/productManagement/pinsertForm")
	public String pinsertForm(ProductVO vo) {
		try {
				System.out.println(vo.toString());
				String fileRealName1 = vo.getPimage1().getOriginalFilename();
				String fileRealName2 = vo.getPimage2().getOriginalFilename();
				Long size1 = vo.getPimage1().getSize();
				Long size2 = vo.getPimage2().getSize();
				
				String extention1 = fileRealName1.substring(fileRealName1.lastIndexOf("."), fileRealName1.length());
				String extention2 = fileRealName2.substring(fileRealName2.lastIndexOf("."), fileRealName2.length());
				
				UUID uuids1 = UUID.randomUUID();
				UUID uuids2 = UUID.randomUUID();
				
				String saveFileName1 = uuids1.toString().replaceAll("-", "") + extention1;
				String saveFileName2 = uuids2.toString().replaceAll("-", "") + extention2;
				
				File dir1 = new File(APP_CONSTANT.uploadPath + saveFileName1); 
				File dir2 = new File(APP_CONSTANT.uploadPath + saveFileName2); 
				
				vo.getPimage1().transferTo(dir1);
				vo.getPimage2().transferTo(dir2);
				
				System.out.println(fileRealName1 + "/"+ size1 + "/"+ saveFileName1);
				System.out.println(fileRealName2 + "/"+ size2 + "/"+ saveFileName2);
				
				vo.setPimage1addr(dir1.getPath());
				vo.setPimage2addr(dir2.getPath());
				adminService.pinsert(vo);
				
		}catch (Exception e) {
			System.out.println("업로드중에러");
			e.printStackTrace();
		}
		return "redirect:/admin/productManagement/productManagementBoard";
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
			return "redirect:/productManagement/productManagementBoard";
		}else {
			RA.addAttribute("msg", "수정실패");
			return "admin/productModify";
		}
	}
	
	//?긽?뭹 ?궘?젣 湲곕뒫
	@RequestMapping("/productManagement/deleteProduct")
	public String deleteProduct(@RequestParam("pid") int pid, RedirectAttributes RA) {
		boolean result = adminService.deleteProduct(pid);
		System.out.println("삭제여부 : " + result);
		
		if(result) {
			RA.addAttribute("msg_d", "삭제성공");
		}else {
			RA.addAttribute("msg_d", "삭제실패");
		}
		return "redirect:/productManagement/productManagementBoard";
		
	}
	
	
	
	//판매실적 페이징 & 표 조회
	@RequestMapping("/salesPerformenceBoard")
	public void salesPerformenceBoard(Model model) {
		System.out.println("실적조회");
		ArrayList<SalesVO> list = adminService.salesList();
		model.addAttribute("list", list);
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
