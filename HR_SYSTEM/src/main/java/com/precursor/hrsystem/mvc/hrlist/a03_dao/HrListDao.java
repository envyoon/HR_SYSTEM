package com.precursor.hrsystem.mvc.hrlist.a03_dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.precursor.hrsystem.mvc.a99_vo.BoardSch;
import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;

@Mapper
@Repository
public interface HrListDao {
	
	// 인사원장 리스트 출력.
	//public ArrayList<HrList> getHrList(HrList sch);
	
	// 인사원장 리스트 출력 테스트
	public ArrayList<HrListTestVO> getHrList(BoardSch sch);
	
	public int totCnt(BoardSch sch);
	
}
