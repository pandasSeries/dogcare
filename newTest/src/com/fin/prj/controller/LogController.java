package com.fin.prj.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fin.prj.dao.ILogDAO;
import com.fin.prj.dto.LogDTO;




@Controller
public class LogController
{
	//요약: 뿌릴게 있으면 Model인자 필요. 받을게 있으면 그 타입의 인자 받아야한다.
	@Autowired
	private SqlSession sqlSession; 
	
	
	@RequestMapping(value = "logform.action",method = RequestMethod.GET)
	public String logForm(Model model, String selected_date, String dog_cd, String memdog_cd)
	{
		String result=""; 
		
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		model.addAttribute("foodlist", dao.foodlist(selected_date));
		
		model.addAttribute("foodselect", dao.foodselect());
		
		model.addAttribute("spllist", dao.spllist(selected_date));
		
		model.addAttribute("splselect", dao.splselect());
		
		model.addAttribute("snacklist", dao.snacklist(selected_date));
		
		model.addAttribute("walklist", dao.walklist(selected_date));
		
		
		
	    
		
	    // selected_date와 dog_cd 값이 제대로 전달되었는지 확인
	    System.out.println("selected_date: " + selected_date);
	    System.out.println("dog_cd: " + dog_cd);

	    // 여러 개의 목욕 날짜를 받아오는 리스트 처리
	    
	    model.addAttribute("bathDateList", dao.bathlist(selected_date));  // JSP로 전달
	    
	    //model.addAttribute("spec_content", dao.speclist(selected_date));
	    
	    List<LogDTO> specList = dao.speclist(selected_date, dog_cd);
        model.addAttribute("speclist", specList);
        model.addAttribute("speclist", specList);
        model.addAttribute("selected_date", selected_date);
        model.addAttribute("dog_cd", dog_cd);
	    
		
		result= "/WEB-INF/view/DailyLogForm.jsp"; 
		
		return result;
	}
	
	@RequestMapping(value = "/foodinsert.action", method = RequestMethod.POST)
	public String foodInsert(LogDTO dto,String selected_date,String dog_cd)
	{
		
		String result= null;
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		dao.foodadd(dto);
		
		result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);
		return result;
	}
	
	@RequestMapping(value = "/fooddelete.action", method = RequestMethod.GET)
	public String foodDelete(String fd_cd,String selected_date,String dog_cd )
	{
		String result= null;
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		dao.fooddelete(fd_cd);
		result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);	
		return result;
	}
	
	


	@RequestMapping(value = "/splinsert.action", method = RequestMethod.POST)
	public String splInsert(LogDTO dto,String selected_date,String dog_cd)
	{
		String result= null;
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		dao.spladd(dto);
		
		result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);
		return result;
	}
	
	@RequestMapping(value = "/spldelete.action", method = RequestMethod.GET)
	public String splDelete(String spl_take_cd,String selected_date,String dog_cd)
	{
		String result= null;
		
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		dao.spldelete(spl_take_cd);
		
		result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);	
		return result;
	}

	

	@RequestMapping(value = "/snackinsert.action", method = RequestMethod.POST)
	public String snackInsert(LogDTO dto,String selected_date,String dog_cd)
	{
		String result= null;
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		dao.snackadd(dto);
	
		result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);	
		return result;
	}
	
	@RequestMapping(value = "/snackdelete.action", method = RequestMethod.GET)
	public String snackDelete(String snack_cd,String selected_date,String dog_cd)
	{
		String result= null;
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		dao.snackdelete(snack_cd);
		
		result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);
		return result;
	}
	

	@RequestMapping(value = "/walkinsert.action", method = RequestMethod.POST)
	public String walkInsert(LogDTO dto,String selected_date,String dog_cd)
	{
		String result= null;
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		
		Date date = new Date();
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd"); 
		String date_str = format.format(date);
			// 테스트용 DATE
		
		System.out.println(date_str);
		String st = dto.getWalk_start_date();
		String ed=  dto.getWalk_end_date();
		System.out.println(date_str+" "+st+":00");
		System.out.println(date_str+" "+ed+":00");
		
		
		dto.setWalk_start_date(date_str+" "+st+":00");
		dto.setWalk_end_date(date_str+" "+ed+":00");
		
		//System.out.println(date);
		
		dao.walkadd(dto);
		
		result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);
		return result;
	}
	
	@RequestMapping(value = "/walkdelete.action", method = RequestMethod.GET)
	public String walkDelete(String walk_cd,String selected_date,String dog_cd)
	{
		String result= null;
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		dao.walkdelete(walk_cd);
		result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);		
		return result;
	}
	
	
	
	
	
	
	
	
	@RequestMapping(value = "/bathinsert.action", method = RequestMethod.POST)
	public String specInsert(LogDTO dto, String selected_date, String dog_cd, String bathcheck, String spec_cd, String spec_content) 
	{
		ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
		
		/*if (bathcheck == null) 
		{
	        bathcheck = "X";  // 기본 값 설정
	    }*/
		//if (dto.getBathcheck() == null) 
		if (bathcheck.equals("X")) 
		{
	        dto.setBathcheck("X");  // 기본 값 설정
	    }
		else
		{
			//bathcheck = "O";
			dto.setBathcheck("O");
			dto.setBath_date(selected_date);
			dto.setMemdog_cd(dog_cd); 
			dao.bathadd(dto);			// 목욕 정보 저장
		}
	    dto.setBathcheck(bathcheck);
	    dto.setMemdog_cd(dog_cd);         // 강아지 코드 설정
	    
	    System.out.println("bathcheck: "+bathcheck);

	    return String.format("redirect:logform.action?dog_cd=%s&selected_date=%s", dog_cd, selected_date);
	}
	
	
	/*
	@RequestMapping(value = "/updateTextContent.action", method = RequestMethod.POST)
    public String updateTextContent(LogDTO dto, String spec_cd, String selected_date,String dog_cd,String spec_content) {
        ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
        String result ="";
        
        // DTO에서 입력받은 내용을 업데이트
        dao.specupdate(spec_cd, spec_content);

        // 업데이트 후 리다이렉트
        result=String.format("redirect:logform.action?dog_cd=%s&selected_date=%s",dog_cd,selected_date);		
		return result;
    }
    */
	
	
	@RequestMapping(value = "/insertSpec.action", method = RequestMethod.POST)
    public String insertSpec(LogDTO dto) {
        ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
        dao.specadd(dto); // 특이사항 추가

        return String.format("redirect:logform.action?dog_cd=%s&selected_date=%s", dto.getDog_cd(), dto.getSelected_date());
    }
	
	// 특이사항 업데이트
    @RequestMapping(value = "/updateSpec.action", method = RequestMethod.POST)
    public String updateSpec(LogDTO dto, String selected_date, String dog_cd) 
    {
        ILogDAO dao = sqlSession.getMapper(ILogDAO.class);
        
        dao.specupdate(dto); // 특이사항 업데이트

        return String.format("redirect:logform.action?dog_cd=%s&selected_date=%s", dog_cd, selected_date);
    }
	
	
}
