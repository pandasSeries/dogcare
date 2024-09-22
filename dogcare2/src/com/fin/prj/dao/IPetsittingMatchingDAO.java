package com.fin.prj.dao;

import org.apache.ibatis.annotations.Param;

public interface IPetsittingMatchingDAO
{
	// 펫시터코드 찾기
	public String searchSCd(String memCd);
	
	// 펫시터의 지원
	public int petsittingApply(@Param("postCd") String postCd, @Param("sCd") String sCd);
	
	// 펫시팅 지원 코드 찾기
	public String searchApplyCd(@Param("postCd") String postCd, @Param("sCd") String sCd);
	
	// 의뢰금액 계산하기
	public int calPerformMoney(@Param("postCd") String postCd, @Param("sCd") String sCd);
	
	// 반려인의 선택
	public int selectPetsitter(@Param("applyCd") String applyCd, @Param("money") int money);
}
