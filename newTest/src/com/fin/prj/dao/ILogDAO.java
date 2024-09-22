package com.fin.prj.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.fin.prj.dto.LogDTO;

public interface ILogDAO
{
	// xml에 있는 id가 여기에 들어가야 한다.
	public ArrayList<LogDTO> foodselect();
	
	public ArrayList<LogDTO> foodlist(String selected_date);
	
	public int foodadd(LogDTO dto);
	
	public int fooddelete(String fd_cd);
	
	
	
	public ArrayList<LogDTO> splselect();
	
	public ArrayList<LogDTO> spllist(String selected_date);
	
	public int spladd(LogDTO dto);
	
	public int spldelete(String spl_take_cd);
	
	

	public ArrayList<LogDTO> snacklist(String selected_date);
	
	public int snackadd(LogDTO dto);
	
	public int snackdelete(String snack_cd);
	

	public ArrayList<LogDTO> walklist(String selected_date);
	
	public int walkadd(LogDTO dto);
	
	public int walkdelete(String walk_cd);
	
	
	// 목욕 여부 카운트 (해당 날짜에 목욕 기록이 있는지 확인)
    //public ArrayList<LogDTO> bathlist(String selected_date);
	public List<String> bathlist(String selected_date);
	
	public int bathadd(LogDTO dto);	// list해서 보이는건 날짜만 보일거다.
	
    public int bathcheck(String selected_date);
    
    
    
	
	//public ArrayList<LogDTO> speclist(String selected_date);
	
	//public int specadd(LogDTO dto);
	
	//public int specdelete(String fd_cd);

    

    // 특이사항 업데이트
    //public int specupdate(String spec_cd);
    //public int specupdate(@Param("spec_cd") String spec_cd, @Param("spec_content") String spec_content);

    public List<LogDTO> speclist(@Param("selected_date") String selected_date, @Param("dog_cd") String dog_cd);
    
    // 특이사항 insert 메서드
    public int specadd(LogDTO dto);

    // 특이사항 업데이트 메서드
    public int specupdate(LogDTO dto);

}
