package com.precursor.hrsystem.mvc.hrlist.a01_controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.hrlist.a02_service.HrListService;




@Controller
@RequestMapping("/")
public class HrListController {
	
	@Autowired
	private HrListService service;
	
	
	// 인사원장 리스트 controller
	@RequestMapping(value="/hrListTest")
	public String hrList(HrListTestVO sch, Model d) {
		
		
		d.addAttribute("hrdata", service.getHrList(sch));
		
		return "hrlist/hrListTest";
	}
	
}
