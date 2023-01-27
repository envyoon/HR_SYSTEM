package com.precursor.hrsystem.mvc.hrlist.a01_controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.hrlist.a02_service.HrListService;


@RestController
@RequestMapping("/")
public class HrListController {
	
	@Autowired
	private HrListService service;
	
	
	// 인사원장 리스트 controller
	@RequestMapping(value="/hrListTest")
	public ResponseEntity<HrListTestVO> hrList(HrListTestVO hrlist, Model d) {
		ResponseEntity<HrListTestVO> hrDataList = service.getHrList(hrlist);
		
		return ResponseEntity.status(HttpStatus.OK).body(hrDataList);
	}
	
	
	// 인사원장 등록 페이지
	@RequestMapping(value="/hrInsertPage")
	public String insertPage() {
		
		return "hrlist/hrInsertTest";
	}
	
	
	// 인사원장 등록
	@RequestMapping(value="/hrInsert")
	public String insertHR(HrListTestVO hrdata, Model d){
		
		d.addAttribute("status","등록되었습니다");
		service.insertHR(hrdata);
		return "hrlist/hrInsertTest"; 
	}
	
	
	// 인사원장 상세 정보 페이지
	@RequestMapping(value="/hrDetail")
	public String getimKey(@RequestParam("imKey") int imKey, Model d){
		System.out.println("상세 imKey:"+imKey);
		d.addAttribute("HrListTestVO", service.getimKey(imKey));
		return "hrlist/hrDetail";
	}
	
	
	// 인사원장 수정 페이지
	@RequestMapping(value="/uptHr")
	public String uptHr(HrListTestVO updateHr, Model d){
		d.addAttribute("status","수정되었습니다");
		service.uptHr(updateHr);

		return "hrlist/hrDetail";
	}
	
	// 인사원장 삭제 페이지
	@RequestMapping(value="/delHr")
	public String delHr(@RequestParam("imKey") int imKey, Model d){
		d.addAttribute("status","삭제되었습니다");
		service.delHr(imKey);
		return "hrlist/hrDetail";
	}
	
}
