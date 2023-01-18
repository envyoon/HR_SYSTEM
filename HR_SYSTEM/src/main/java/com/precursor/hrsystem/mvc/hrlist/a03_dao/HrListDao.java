package com.precursor.hrsystem.mvc.hrlist.a03_dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;


import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.a99_vo.PagingVO;


@Mapper
@Repository
public interface HrListDao {
	
	// 인사원장 리스트 출력 테스트
	//public ArrayList<HrListTestVO> getHrList(HrListTestVO hrlist);
	
	// 인사원장 리스트 출력.
	public ArrayList<HrListTestVO> getHrList(PagingVO sch);
	
	// 페이징 처리시 전체 갯수 체크 mapper에 있는 쿼리로 넘겨 갯수를 가져온다.
	public int totCnt(PagingVO sch);
	

	public HrListTestVO getimKey(int imKey);
	
	
	public void insertHR(HrListTestVO hrdata);
	
	
	public void uptHr(HrListTestVO updateHr);
	
	
	public void delHr(int imKey);
	
}
