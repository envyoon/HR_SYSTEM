package com.precursor.hrsystem.mvc.hrlist.a02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.precursor.hrsystem.mvc.hrlist.a03_dao.HrListDao;
import com.precursor.hrsystem.mvc.hrlist.a04_vo.HrList;

@Service
public class HrListService {
	
	@Autowired
	private HrListDao dao;
	
	
	// 인사원장 리스트 비지니스 로직
	public ArrayList<HrList> getHrList(HrList sch){
		
		return dao.getHrList(sch);
	}
	
}
