package com.fin.prj.dao;

import java.util.ArrayList;

import com.fin.prj.dto.CrbSizeDTO;
import com.fin.prj.dto.PetsitterInfoDTO;
import com.fin.prj.dto.RsOmrDTO;
import com.fin.prj.dto.WorkDayDTO;

public interface IPetsitterMainDAO
{
	public PetsitterInfoDTO petsitterInfo(String memCd);
	public int performCount(String sCd);
	public double ratingAvg(String sCd);
	public ArrayList<CrbSizeDTO> petsitterCrbSize(String sCd);
	public ArrayList<WorkDayDTO> petsitterWorkDay(String sCd);
	public int applyCount(String sCd);
	public int matchingCount(String sCd);
	public int monthAccPay(String sCd);
	public RsOmrDTO examInfo(String sCd);
}
