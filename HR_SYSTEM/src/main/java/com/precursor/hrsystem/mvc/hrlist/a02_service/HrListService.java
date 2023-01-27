package com.precursor.hrsystem.mvc.hrlist.a02_service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;


import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.a99_vo.PagingVO;
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
//	public ArrayList<HrListTestVO> getHrList(HrListTestVO hrlist) {
//		return dao.getHrList(hrlist);
//	}
	
	public ResponseEntity<HrListTestVO> getHrList(PagingVO pv)  {
		// 1. 전체 갯수
		pv.setCount(dao.totCnt(pv));
		
		System.out.println("totcnt >>>>>>>> " +dao.totCnt(pv));
		
		// 2. 한번에 보일 페이지 수 초기값 설정
		// 1) 초기에는 0이기에 5개로 설정 처리
		if(pv.getPageSize()==0) { pv.setPageSize(5); }
		
		// 3. 총 페이지 수 (전체갯수, 한번에 보일 페이지 수)
		// ex) 15건수/5 ==> 3페이지
		//     16건수/5 ==> 4페이지.. 나머지가 있을 때, 1개 더 보여줘야 한다.
		//     일 때, 수학적으로 올림 처리로 계산하면 된다.
		double totPage1 = pv.getCount()/(double)pv.getPageSize();
		totPage1 = Math.ceil(totPage1); // 올림 처리..
		int totPage = (int)(totPage1);
		pv.setPageCount( totPage );
		
		System.out.println("PageCount(totPage) >>>>>>>> " +totPage);
		
		// 4. 클릭한 현재 페이지 호출
		// 현재 페이지 초기값.   0 ==> 1
		if(pv.getCurPage()==0) { pv.setCurPage(1); }
		
		int curPage = pv.getCurPage();
		System.out.println("curpage >>>>>> " +curPage);
		
		/*
		현재페이지	나올 번호 리스트(5개기준)
		1페이지	1 2345
		2페이지	6 78910
		3페이지	11 12131415
		 * */
		// 5. 시작번호
		pv.setStart((pv.getCurPage()-1)*pv.getPageSize()+1);
		
		int start = pv.getStart();
		System.out.println("start >>>> "+start);
		
		
		// 6. 마지막번호 : sql에서 없는 페이지는 로딩이 안되기에 마지막 총페이지 번호 조건을
		//    넣지 않고 처리했다.
		pv.setEnd(pv.getCurPage()*pv.getPageSize());
		
		int end = pv.getEnd();
		System.out.println("end >>>>> " +end);
		
		// 7 하단의 페이지 block 처리
		//	1) 기본 block의 크기 지정
		pv.setBlockSize(5);
		
		int blocksize = pv.getBlockSize();
		System.out.println("blocksize >>>>>>>>> " +blocksize);
		
		//	2) 현재 블럭 그룹 번호 : 현재 클릭한 페이지번호/블럭의 크기
		int curBlockGrpNo = (int)Math.ceil(pv.getCurPage()/(double)pv.getBlockSize());
		System.out.println("curBlockGrpNo >>>>> "+curBlockGrpNo);
		
		// 	3) 블럭 그룹의 시작 페이지 번호
		pv.setStartBlock((curBlockGrpNo-1)*pv.getBlockSize()+1);
		
		int setStartBlock = pv.getStartBlock();
		System.out.println("setStartBlock >>>>> "+setStartBlock);
		
		//  4) 블럭 그룹의 마지막 페이지 번호
		//     총페이지수 보다 크면 총 페이지수를 마지막 페이지 번호.
		int endBlockGrpNo = curBlockGrpNo*pv.getBlockSize();
		System.out.println("endBlockGrpNo >>>>> "+endBlockGrpNo);
		
		pv.setEndBlock(endBlockGrpNo>pv.getPageCount()?pv.getPageCount():endBlockGrpNo);
		
		int endblock = pv.getEndBlock();
		System.out.println("endblock >>>>>> "+endblock);
		
		System.out.println("getHrList >>>> "+dao.getHrList(pv));
		
		
//		for(int i=1; i<=5; i++) {
//			pv.setNo(i);
//		}
		
		
		return dao.getHrList(pv);
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
