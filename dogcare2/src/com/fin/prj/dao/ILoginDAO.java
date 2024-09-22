package com.fin.prj.dao;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.MemDTO;
import com.fin.prj.dto.ResDTO;

public interface ILoginDAO
{
	// 로그인
	public String login(@Param("id") String id, @Param("pw") String pw);
	//-- 회원코드 반환
	
	// 반려인으로 로그인
	public int searchMemdog(@Param("memCd") String memCd);
	//-- 반려 등록된 강아지 있는지 유무(유 : 반려인 메인 페이지 / 무 : 반려견 등록 페이지)
	
	// 펫시터로 로그인
	public String searchSApply(@Param("memCd") String memCd);
	//-- 제출한 지원서가 있는지 확인(가장 최신 지원서만 확인) - 지원서 코드 반환 
	//-- (유 : 결과가 있는지 확인 / 무 : 지원서 제출 페이지)
	public ResDTO searchRes(@Param("sApplyCd") String sApplyCd);
	//-- 지원서에 대한 결과가 있는지 확인
	//-- (유 - 불합격 : 불합격 페이지, 합격 : 펫시터 계정이 있는지 확인 / 무 : 심사중 페이지)
	public String searchS(@Param("resCd") String resCd);
	//-- 펫시터 계정이 있는지 확인 - 펫시터 코드 반환
	//-- (유 : 펫시터 메인 페이지 / 무 : 펫시터 정보 등록 페이지)
}
