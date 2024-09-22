package com.fin.prj.dao;

import java.util.Map;

import org.apache.ibatis.annotations.Param;

public interface IPerformDAO
{
	
	// pic높은거
	public String searchPic(String mem_cd);

	// PIC 등록
	public int picInsert(@Param("map") Map<String, String> map, @Param("mem_cd") String mem_cd);

	// PROFILE_PIC 등록
	public int profile_picInsert(Map<String, String> map);

	// 펫시터 수행사진 insert
	public int performedPicInsert(Map<String, String> map);
	
	
}
