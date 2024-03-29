package com.precursor.hrsystem.mvc.hrlist.a03_dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.precursor.hrsystem.mvc.a99_vo.HrList;
import com.precursor.hrsystem.mvc.a99_vo.HrListTestVO;
import com.precursor.hrsystem.mvc.a99_vo.PagingVO;

@Mapper
@Repository
public interface HrDao {
	
	public List<HrList> getHrList(PagingVO sch);
	
	public int totCnt(PagingVO sch);
	
	public HrList getusrLogin(String usrLogin);
	
	public void insertHR(HrList hrdata);
	
	public void uptHr(HrList updateHr);
	
	public void delHr(String usrLogin);
	
}
