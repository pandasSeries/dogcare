package com.fin.prj.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.MyDogListDTO;

public interface IMyDogListDAO 
{
	public ArrayList<MyDogListDTO> list(@Param("memCd") String memCd);
		
	public MyDogListDTO doginfo(@Param("dog_cd") String dog_cd);
	
	public MyDogListDTO cltime(@Param("dog_cd") String dog_cd);
	
	public ArrayList<MyDogListDTO> memdoglist(@Param("dog_cd") String dog_cd);
	
	// 일지, 반려견 사진 불러오기
	public List<Map<String, Object>> mempicList(@Param("memCd") String memCd);
	
	public String memdogCd(@Param("memCd") String memCd, @Param("dog_cd") String dog_cd);
	
}
