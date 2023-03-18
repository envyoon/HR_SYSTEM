package com.precursor.hrsystem.mvc.hrlist.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.precursor.hrsystem.mvc.a99_vo.PagingVO;
import com.precursor.hrsystem.mvc.hrlist.a02_service.HrListService;

@Controller
@RequestMapping("/")
public class HrController {
	
	@Autowired
	private HrListService service;
	
	@RequestMapping(value="/hrList")
	public String hrList(PagingVO hrlist, Model d) {
		
		d.addAttribute("hrdata",service.getHrList(hrlist));
		
		return "hrlist/hrList";
	}
}