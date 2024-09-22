package com.fin.prj.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.PetsittingListDTO;

public interface IPetsittingListDAO
{
	public ArrayList<PetsittingListDTO> listAll();
	

	// 펫시팅 전체 사진
	public List<Map<String, String>> petsittingList();
}
