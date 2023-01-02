package com.precursor.hrsystem.mvc.hrlist.a02_service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.precursor.hrsystem.mvc.a99_vo.BoardSch;
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
	
	/*
	// 인사원장 리스트 비지니스 로직 테스트
		public ArrayList<HrListTestVO> getHrList(HrListTestVO sch){
			
			return dao.getHrList(sch);
		}
	*/
	
	 public ArrayList<HrListTestVO> getHrList(BoardSch sch){
		// 1. 전체 갯수
		// 총 건수를 화면에 출력하려면 BoardSch에 설정. 모델 데이터로 활용할 수 있음
		sch.setCount(dao.totCnt(sch));
		// 2. 한번에 보일 페이지 수 초기값 설정(초기에는 0이기에 5개로 설정처리)
		if(sch.getPageSize()==0) {
			sch.setPageSize(5);
		}
		// 3. 총 페이지 수(전체 갯수, 한번에 보일 페이지 수)
		// 	ex) 15건수/5 => 3페이지
		//		16건수/5 => 4페이지
		double totPage1 = sch.getCount()/(double)sch.getPageSize();
		totPage1 = Math.ceil(totPage1); // 올림처리
		int totPage = (int)(totPage1);
		sch.setPageCount(totPage);
		// 4. 클릭한 현재 페이지 호출
		//	 현재 페이지 초기값 0=>1
		if(sch.getCurPage()==0) {
			sch.setCurPage(1);
		}
		// 5. 시작번호
		sch.setStart((sch.getCurPage()-1)*sch.getPageSize()+1);
		// 6. 마지막번호
		sch.setEnd(sch.getCurPage()*sch.getPageSize());
		// 7 하단의 페이지 block 처리
				//	1) 기본 block의 크기 지정
				sch.setBlockSize(5);
				//	2) 현재 블럭 그룹 번호 : 현재 클릭한 페이지번호/블럭의 크기
				int curBlockGrpNo = (int)Math.ceil(sch.getCurPage()/(double)sch.getBlockSize());
				// 	3) 블럭 그룹의 시작 페이지 번호
				sch.setStartBlock((curBlockGrpNo-1)*sch.getBlockSize()+1);
				//  4) 블럭 그룹의 마지막 페이지 번호
				//     총페이지수 보다 크면 총 페이지수를 마지막 페이지 번호.
				int endBlockGrpNo = curBlockGrpNo*sch.getBlockSize();
				sch.setEndBlock(endBlockGrpNo>sch.getPageCount()?sch.getPageCount():endBlockGrpNo);
				return dao.getHrList(sch);		
	}
	 
	 
		
}
