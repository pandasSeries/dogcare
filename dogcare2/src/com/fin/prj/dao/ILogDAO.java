package com.fin.prj.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.LogDTO;

public interface ILogDAO
{
	// xml에 있는 id가 여기에 들어가야 한다.
	public ArrayList<LogDTO> foodselect();
	
	//public ArrayList<LogDTO> foodlist(String selected_date);
	public ArrayList<LogDTO> foodlist(LogDTO dto);
	
	public int foodadd(LogDTO dto);
	
	public int fooddelete(LogDTO dto);
	
	
	
	public ArrayList<LogDTO> splselect();
	
	public ArrayList<LogDTO> spllist(LogDTO dto);
	
	public int spladd(LogDTO dto);
	
	public int spldelete(LogDTO dto);
	
	

	public ArrayList<LogDTO> snacklist(LogDTO dto);
	
	public int snackadd(LogDTO dto);
	
	public int snackdelete(LogDTO dto);
	

	public ArrayList<LogDTO> walklist(LogDTO dto);
	
	public int walkadd(LogDTO dto);
	
	public int walkdelete(LogDTO dto);
	
	
	// 목욕 여부 카운트 (해당 날짜에 목욕 기록이 있는지 확인)
    //public ArrayList<LogDTO> bathlist(String selected_date);
	public List<String> bathlist(LogDTO dto);
	
	public int bathadd(LogDTO dto);	// list해서 보이는건 날짜만 보일거다.
	
    public int bathcheck(LogDTO dto);
    
    
    
	
	//public ArrayList<LogDTO> speclist(String selected_date);
	
	//public int specadd(LogDTO dto);
	
	//public int specdelete(String fd_cd);

    

    // 특이사항 업데이트
    //public int specupdate(String spec_cd);
    //public int specupdate(@Param("spec_cd") String spec_cd, @Param("spec_content") String spec_content);

    public List<LogDTO> speclist(LogDTO dto);
    
    // 특이사항 insert 메서드
    public int specadd(LogDTO dto);

    // 특이사항 업데이트 메서드
    public int specupdate(LogDTO dto);
    
    // 일기
	public List<LogDTO> diarylist(LogDTO dto);
    
	// 일기 insert 메서드
    public int diaryadd(LogDTO dto);

    // 일기 업데이트 메서드
    public int diaryupdate(LogDTO dto);
    
    public ArrayList<LogDTO> loglist(LogDTO dto);
    

}
