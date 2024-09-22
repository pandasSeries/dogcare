package com.fin.prj.dao;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.OmrDTO;
import com.fin.prj.dto.TtpDTO;

public interface IOmrDAO
{
	// 받아온 데이터 omr에 인서트
	public int insertOmr(@Param("dto") OmrDTO dto );
	
	// 성적 맞는지 확인 
	public int checkScore(TtpDTO dto);
	
}
