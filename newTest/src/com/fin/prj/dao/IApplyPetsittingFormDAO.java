package com.fin.prj.dao;

import java.util.ArrayList;

import com.fin.prj.dto.MemInfoDTO;
import com.fin.prj.dto.MyDogListDTO;
import com.fin.prj.dto.ReqTyDTO;

public interface IApplyPetsittingFormDAO
{
	public ArrayList<MyDogListDTO> myDogList(String memCd);
	public MemInfoDTO searchMemInfo(String memCd);
	public ArrayList<ReqTyDTO> reqList();
}
