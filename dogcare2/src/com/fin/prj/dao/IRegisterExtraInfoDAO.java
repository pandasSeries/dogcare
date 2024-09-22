package com.fin.prj.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.CrbSizeDTO;
import com.fin.prj.dto.LcsDTO;
import com.fin.prj.dto.OwnLcsDTO;
import com.fin.prj.dto.SDTO;
import com.fin.prj.dto.SizDTO;
import com.fin.prj.dto.WeekDTO;
import com.fin.prj.dto.WorkDayDTO;

public interface IRegisterExtraInfoDAO
{
	// weeek
	public ArrayList<WeekDTO> week();
	
	//크기
	public ArrayList<SizDTO> size();
	
	//자격증
	public ArrayList<LcsDTO> lcs();
	
	// 지원결과코드 찾기
	public String searchResCd(String memCd);
	
	// 펫시터 등록하기
	public int insertPetsitter(@Param("dto") SDTO dto);
	
	// 등록한 펫시터코드 찾기
	public String searchSCd(String memCd);
	
	// 근무가능요일 등록하기
	public int insertWeek(@Param("sCd") String sCd, @Param("weekCd") String weekCd);
	
	// 돌봄가능크기 등록하기
	public ArrayList<CrbSizeDTO> insertSiz();
	
	// 보유자격증 등록하기
	public ArrayList<OwnLcsDTO> insertLcs();
	
}
