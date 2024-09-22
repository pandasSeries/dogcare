package com.fin.prj.dao;

import java.util.ArrayList;

import com.fin.prj.dto.DogDTO;
import com.fin.prj.dto.LcsDTO;
import com.fin.prj.dto.PetsitterInfoDTO;
import com.fin.prj.dto.PetsittingReqDTO;
import com.fin.prj.dto.ReqTyDTO;
import com.fin.prj.dto.SReivewDTO;

public interface IApplicationContentDAO
{
	// 의뢰서
	public ArrayList<DogDTO> dogList(String postCd);
	public PetsittingReqDTO petsittingReqContent(String postCd);
	public ArrayList<ReqTyDTO> reqList(String postCd);
	public ArrayList<PetsitterInfoDTO> petsitterList(String postCd);	//-- 특정 의뢰서에 지원한 모든 펫시터 정보
	
	// 의뢰서에 지원한 펫시터
	public PetsitterInfoDTO petsitterInfo(String sCd); //-- 특정 펫시터의 정보들
	public int performCount(String sCd);
	public PetsitterInfoDTO performCountDetail(String sCd);
	public double ratingAvg(String sCd);
	public ArrayList<SReivewDTO> review(String sCd);	//-- 가장 최신 리뷰 3개
	public ArrayList<LcsDTO> lcsList(String sCd);		//-- 보유한 자격증
	
	// 작성자의 memCd 찾기
	public String searchWriter(String postCd);
	
	// 해당 의뢰서의 펫시터가 선정되었는지 여부
	//public int searchPerform(String postCd);
	
	// 어떤 펫시터가 선택되었는지(위에서 선정되었으면 실행)
	public String searchSelectedS(String postCd);
}
