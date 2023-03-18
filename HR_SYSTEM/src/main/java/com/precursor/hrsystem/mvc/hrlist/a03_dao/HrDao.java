package com.precursor.hrsystem.mvc.hrlist.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.a99_vo.PagingVO;

@Mapper
@Repository
public interface HrDao {
	
	public List<HrListTestVO> getHrList(PagingVO sch);
	
	public int totCnt(PagingVO sch);
	
}
