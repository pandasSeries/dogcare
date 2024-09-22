package com.fin.prj.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.QDTO;
import com.fin.prj.dto.TtpDTO;

public interface ITtpDAO
{
	// 문제 10개 추출
	public TtpDTO selectQ();
	
	// 추출한 문제 TTP테이블에 삽입
	public int insertQ(@Param("dto") TtpDTO dto);
	
	// TTP테이블에 삽입된 데이터를 조회 
	public ArrayList<QDTO> showQ();
	
	
	// TTP테이블 A 조회 
	public ArrayList<QDTO> showA();
	
	
	// ttp_cd조회 
	public String showCd();
	
	
}
