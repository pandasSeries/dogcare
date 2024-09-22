package com.fin.prj.dao;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.ApplyPetsittingDTO;

public interface IApplyPetsittingDAO
{
	public int addDogList(@Param("memdog1") String memdog1, @Param("memdog2") String memdog2, @Param("memdog3") String memdog3);
	public String searchListCd(@Param("memdog1") String memdog1);
	public int addPetsittingReq(@Param("listCd") String listCd, @Param("dto") ApplyPetsittingDTO dto);
	public String searchPetsittingReqCd(@Param("listCd") String listCd);
	public int addReq(@Param("postCd") String postCd, @Param("req") String req);
}
