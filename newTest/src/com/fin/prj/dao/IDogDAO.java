package com.fin.prj.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.ActiDTO;
import com.fin.prj.dto.BreedDTO;
import com.fin.prj.dto.DogDTO;
import com.fin.prj.dto.DssDTO;
import com.fin.prj.dto.FeedDTO;
import com.fin.prj.dto.FooDTO;
import com.fin.prj.dto.SizDTO;
import com.fin.prj.dto.SplDTO;
import com.fin.prj.dto.SplTyDTO;

public interface IDogDAO
{
	// 견종 리스트
	public ArrayList<BreedDTO> breedList();

	// 배변습성 리스트
	public ArrayList<FooDTO> fooList();

	// 활동량 리스트
	public ArrayList<ActiDTO> actiList();

	// 크기 리스트
	public ArrayList<SizDTO> sizList();

	// 병 리스트
	public ArrayList<DssDTO> dssList();

	// 영양제 리스트
	public ArrayList<SplDTO> splList();

	// 영양제 종류
	public ArrayList<SplTyDTO> spltyList();

	// 사료
	public ArrayList<FeedDTO> feedList();

	// 반려견 등록
	public int dogInsert(@Param("map") Map<String, String> map, @Param("mem_cd") String mem_cd);
	 
	// memdog 등록
	public int memDogInsert(@Param("map") Map<String, String> map, @Param("mem_cd") String mem_cd);

	// MY_SPL 등록
	public int my_spl_Insert(Map<String, String> map);

	// MY_FEED 등록
	public int my_feed_Insert(Map<String, String> map);

	// MY_DISEASE 등록
	public int my_dss_Insert(Map<String, String> map);

	// dog_cd 높은거
	public String searchId(String mem_cd);

	// pic높은거
	public String searchPic(String mem_cd);

	// PIC 등록
	public int picInsert(@Param("map") Map<String, String> map, @Param("mem_cd") String mem_cd);

	// PROFILE_PIC 등록
	public int profile_picInsert(Map<String, String> map);

	// 내 반려견 리스트
	public List<Map<String, Object>> dogList(String mem_cd);

	// 내 반려견 상세 정보
	public List<Map<String, Object>> dogSubList(String dog_cd);

	// 반려견 수정
	public int dogUpdate(Map<String, String> map);

	// MY_SPL 수정
	public int my_spl_Update(Map<String, String> map);

	// MY_FEED 수정
	public int my_feed_Update(Map<String, String> map);

	// MY_DISEASE 수정
	public int my_dss_Update(Map<String, String> map);

	// 내 반려견 삭제
	public int dogDelete(Map<String, String> map);

	// 공유 반려견 삭제
	public int memDogDelete(Map<String, String> map);

	// MY_SPL 삭제
	public int my_spl_Delete(Map<String, String> map);

	// MY_FEED 삭제
	public int my_feed_Delete(Map<String, String> map);

	// MY_DISEASE 삭제
	public int my_dss_Delete(Map<String, String> map);

	// PROFILE_PIC 삭제
	public int profile_picDelete(Map<String, String> map);

	// MY_SPL_cd search
	public List<Map<String, Object>> my_spl_cd_Search(Map<String, String> map);

	// MY_SPL_cd search
	public List<Map<String, Object>> my_spl_cd2_Search(Map<String, String> map);

	// MY_SPL_cd search
	public List<Map<String, Object>> my_spl_cd3_Search(Map<String, String> map);

	// MY_DSS search
	public List<Map<String, Object>> my_dss_Search(Map<String, String> map);

	// MY_FEED search
	public List<Map<String, Object>> my_feed_Search(Map<String, String> map);
	
	// 회원의 반려견 수
	public int dogCount(String mem_cd);
	
	// memdog search insert
	public int memDogSearchInsert(@Param("map") Map<String, String> map, @Param("mem_cd") String mem_cd);
	
	// memdog search
	public int memDogSearch(Map<String, String> map);

	// memdog list
	public List<Map<String, Object>> memDogList(@Param("map") Map<String, String> map, @Param("mem_cd") String mem_cd);
	
	//memdog count
	public int memDogCount(@Param("map") Map<String, String> map, @Param("mem_cd") String mem_cd);

	//Profile search
	public String profileSearch(Map<String, String> map);

	// pic update 
	public int picUpdate(@Param("map") Map<String, String> map, @Param("pid") String pid);
	
	
	
}
