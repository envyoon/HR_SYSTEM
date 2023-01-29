package com.precursor.hrsystem.mvc.a99_vo;




import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class PagingVO {
	// 기본 페이지 처리
	private int count; // 총건수(DB)
	private int pageSize;// 한번에 보여줄 데이터 건수(화면 select-요청)
	private int pageCount; // 총 페이지 수 (총건수/한번에 보여줄 데이터 건수)
	private int curPage;// 클릭한 현재 페이지 번호
	private int start; // DB에 넘길 시작 번호
	private int end; // DB에 넘길 페이지의 마지막 번호
	
	// block 처리
	private int blockSize; // 한번에 보여줄 하단의 페이지 블럭
	private int startBlock; // 블럭의 시작 번호
	private int endBlock; // 블럭의 마지막 번호
	
	// 페이지 갯수, 번호
	private int cnt;
	private int no;
	
	//검색할 때 조건
	private String sch; 
	private String kind;
}
