package com.precursor.hrsystem.mvc.hrlist.a01_controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.a99_vo.PagingVO;
import com.precursor.hrsystem.mvc.hrlist.a02_service.HrListService;


@Controller
@RequestMapping("/")
public class HrListController {
	
	@Autowired
	private HrListService service;
	
	
	// 인사원장 리스트 controller
	@RequestMapping(value="/hrListTest")
	public String hrList(PagingVO hrlist, Model d) {
		
		d.addAttribute("hrdata", service.getHrList(hrlist));
		
		
		return "hrlist/hrListTest";
	}
	
	
	// 인사원장 등록 페이지
	@RequestMapping(value="/hrInsertPageTest")
	public String insertPage() {
		
		return "hrlist/hrInsertTest";
	}
	
	
	// 인사원장 등록
	@RequestMapping(value="/hrInsertTest")
	public String insertHR(HrListTestVO hrdata, Model d){
		
		d.addAttribute("status","등록되었습니다");
		service.insertHR(hrdata);
		return "hrlist/hrInsertTest"; 
	}
	
	
	// 인사원장 상세 정보 페이지
	@RequestMapping(value="/hrDetailTest")
	public String getimKey(@RequestParam("imKey") int imKey, Model d){
		System.out.println("상세 imKey:"+imKey);
		d.addAttribute("HrListTestVO", service.getimKey(imKey));
		return "hrlist/hrDetailTest";
	}
	
	
	// 인사원장 수정 페이지
	@RequestMapping(value="/uptHrTest")
	public String uptHr(HrListTestVO updateHr, Model d){
		d.addAttribute("status","수정되었습니다");
		service.uptHr(updateHr);

		return "hrlist/hrDetailTest";
	}
	
	// 인사원장 삭제 페이지
	@RequestMapping(value="/delHrTest")
	public String delHr(@RequestParam("imKey") int imKey, Model d){
		d.addAttribute("status","삭제되었습니다");
		service.delHr(imKey);
		return "hrlist/hrDetailTest";
	}
	
}
