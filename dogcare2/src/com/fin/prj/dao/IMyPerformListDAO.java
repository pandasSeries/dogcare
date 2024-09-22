package com.fin.prj.dao;

import java.util.ArrayList;

import com.fin.prj.dto.PerformInfoDTO;

public interface IMyPerformListDAO
{
	public ArrayList<PerformInfoDTO> PerformList(String memCd);
}
