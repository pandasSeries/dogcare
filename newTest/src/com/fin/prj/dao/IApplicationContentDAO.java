package com.fin.prj.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

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

	
	// 펫시팅 의뢰 사진
	public List<Map<String, String>> petsittingSearch(@Param("postCd") String postCd);
}
