package com.fin.prj.dao;

import com.fin.prj.dto.SApplyDTO;

public interface ISApplyDAO
{
	// 지원서 입력
	public int PetsitterApplyInsert(SApplyDTO dto);
}
