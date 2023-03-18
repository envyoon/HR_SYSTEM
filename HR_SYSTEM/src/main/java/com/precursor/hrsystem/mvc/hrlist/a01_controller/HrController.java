package com.precursor.hrsystem.mvc.hrlist.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.precursor.hrsystem.mvc.a99_vo.HrList;
import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.a99_vo.PagingVO;
import com.precursor.hrsystem.mvc.hrlist.a02_service.HrService;

@Controller
@RequestMapping("/")
public class HrController {
	
	@Autowired
	private HrService service;
	
	@RequestMapping(value="/hrList")
	public String hrList(PagingVO hrlist, Model d) {
		
		d.addAttribute("hrdata",service.getHrList(hrlist));
		
		return "hrlist/hrList";
	}
	
	// 인사원장 등록 페이지
		@RequestMapping(value="/hrInsertPage")
		public String insertPage() {
			
			return "hrlist/hrInsert";
		}
		
		
		// 인사원장 등록
		@RequestMapping(value="/hrInsert")
		public String insertHR(HrList hrdata, Model d){
			
			d.addAttribute("status","등록되었습니다");
			service.insertHR(hrdata);
			return "hrlist/hrInsert"; 
		}
		
		
		// 인사원장 상세 정보 페이지
		@RequestMapping(value="/hrDetail")
		public String getusrLogin(@RequestParam("usrLogin") String usrLogin, Model d){
			System.out.println("상세 usrLogin:"+usrLogin);
			d.addAttribute("HrList", service.getusrLogin(usrLogin));
			return "hrlist/hrDetail";
		}
		
		
		// 인사원장 수정 페이지
		@RequestMapping(value="/uptHr")
		public String uptHr(HrList updateHr, Model d){
			d.addAttribute("status","수정되었습니다");
			service.uptHr(updateHr);

			return "hrlist/hrDetail";
		}
		
		// 인사원장 삭제 페이지
		@RequestMapping(value="/delHr")
		public String delHr(@RequestParam("usrLogin") String usrLogin, Model d){
			d.addAttribute("status","삭제되었습니다");
			service.delHr(usrLogin);
			return "hrlist/hrDetail";
		}
	
}
