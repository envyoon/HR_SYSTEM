package com.precursor.hrsystem.mvc.list.a01_controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.precursor.hrsystem.mvc.list.a02_service.ListService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/")
public class ListController {

	@Autowired
	private ListService sercice;
	
	
	
}
