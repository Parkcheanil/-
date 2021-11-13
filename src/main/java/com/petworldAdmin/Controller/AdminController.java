package com.petworldAdmin.controller;

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
	@RequestMapping("updateUser")
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
		
	@RequestMapping("/order/updateUserOrder")
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
			ArrayList<ProductVO> list = adminService.productList(cri);
			model.addAttribute("list", list);
			
			//페이지이션
			int total = adminService.getTotal(cri);
			PageVO pageVO = new PageVO(cri, total);
			model.addAttribute("pageVO", pageVO);

	}
	@RequestMapping("/productManagement/productRegist")
	public void productRegist() {
	
	}
	//상품 insert
	@RequestMapping("/productManagement/pinsertForm")
	public String pinsertForm(ProductVO vo) {
		try {

				System.out.println(vo.toString());
				String fileRealName = vo.getPimage().getOriginalFilename();
				Long size = vo.getPimage().getSize();
				
				String extention = fileRealName.substring(fileRealName.lastIndexOf("."), fileRealName.length());
				
				UUID uuids = UUID.randomUUID();
				
				String saveFileName = uuids.toString().replaceAll("-", "") + extention;
				
				File dir = new File(APP_CONSTANT.uploadPath + saveFileName); 
				
				vo.getPimage().transferTo(dir);
				
				System.out.println(fileRealName + "/"+ size + "/"+ saveFileName);
				
				vo.setPimageaddr(dir.getName());
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
			return "redirect:/admin/productManagement/productManagementBoard";
		}else {
			RA.addAttribute("msg", "수정실패");
			return "admin/productModify";
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
