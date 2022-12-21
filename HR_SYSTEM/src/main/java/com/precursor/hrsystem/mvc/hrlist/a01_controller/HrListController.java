package com.precursor.hrsystem.mvc.hrlist.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.precursor.hrsystem.mvc.hrlist.a02_service.HrListService;
import com.precursor.hrsystem.mvc.hrlist.a04_vo.HrList;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/")
public class HrListController {
	
	@Autowired
	private HrListService service;
	
	
	// 인사원장 리스트 controller
	@RequestMapping(value="/hrListTest")
	public String hrList(HrList sch, Model d) {
		
		d.addAttribute("hrlisttest", service.getHrList(sch));
		
		return "hrlist/HrListTest";
	}
	
}
