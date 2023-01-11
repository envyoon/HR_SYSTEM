package com.precursor.hrsystem.mvc.hrlist.a02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.hrlist.a03_dao.HrListDao;


@Service
public class HrListService {
	
	@Autowired
	private HrListDao dao;
	
	
	// 인사원장 리스트 비지니스 로직
	/* 
	public ArrayList<HrList> getHrList(HrList sch){
		
		return dao.getHrList(sch);
	}
	*/
	
	
	// 인사원장 리스트 비지니스 로직 테스트
	public ArrayList<HrListTestVO> getHrList(HrListTestVO hrlist) {
		
		// 요청값으로 초기화면일 때, null을 "" 으로 처리 참고
		/*
		 * if(hrlist.getImUserNameKr() == null ) hrlist.setImUserNameKr("");
		 * if(hrlist.getImDept() == null ) hrlist.setImDept("");
		 * if(hrlist.getImUserRank() == null ) hrlist.setImUserRank("");
		 */
		
		
		return dao.getHrList(hrlist);
	}
	
	// 인사정보 상세 서비스 
	public HrListTestVO getimKey(int imKey) {
		return dao.getimKey(imKey);
	}
	
	// 인사정보 삽입 서비스
	public void insertHR(HrListTestVO hrdata) {
		dao.insertHR(hrdata);
	}
	
	// 인사정보 업데이트 서비스
	public void uptHr(HrListTestVO updateHr) {
		dao.uptHr(updateHr);
	}	
	
	// 인사정보 삭제 서비스
	public void delHr(int imKey) {
		dao.delHr(imKey);
	} 
		
}
