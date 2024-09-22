package com.fin.prj.dao;

import com.fin.prj.dto.MemInfoDTO;

public interface IMemberInsertDAO
{
	// 회원코드 발행
	public int newMemCd();
	
	public String getMemCd();
	
	// 회원 정보생성
	public int add(MemInfoDTO dto);
}
