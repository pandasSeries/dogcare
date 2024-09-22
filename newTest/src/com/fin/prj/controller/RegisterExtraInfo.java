package com.fin.prj.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fin.prj.dao.IRegisterExtraInfoDAO;
import com.fin.prj.dto.SDTO;

@Controller
public class RegisterExtraInfo 
{
	@Autowired
	private SqlSession sqlSession;
	
	/*
	@RequestMapping(value = "ExtraInfo.action", method=RequestMethod.GET)
	public String week(Model model)
	{
		String result ="";
		
		IRegisterExtraInfo dao = sqlSession.getMapper(IRegisterExtraInfo.class);
		
		model.addAttribute("week", dao.week());
		
		result = "/WEB-INF/view/ExtraInformWeek.jsp";
		
		return result;
	}
	*/
	
	@RequestMapping(value = "extrainformsmoke.action")
	public String selectSmoke()
	{
		return "/WEB-INF/view/ExtraInformSmoke.jsp";
	}
	
	@RequestMapping(value = "petsitterinsert.action", method = RequestMethod.GET)
	public String petsitterInsert(HttpSession session, String smokeYn)
	{
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");
		
		IRegisterExtraInfoDAO dao = sqlSession.getMapper(IRegisterExtraInfoDAO.class);
		SDTO dto = new SDTO();
		
		System.out.println(dao.searchResCd(memCd));
		dto.setRes_cd(dao.searchResCd(memCd));
		dto.setSmoke_yn(smokeYn);
		
		dao.insertPetsitter(dto);
		
		return "redirect:extrainformweek.action";
	}
	
	@RequestMapping(value = "extrainformweek.action")
	public String selectWeek(Model model)
	{
		IRegisterExtraInfoDAO dao = sqlSession.getMapper(IRegisterExtraInfoDAO.class);
		
		model.addAttribute("week", dao.week());
		
		return "/WEB-INF/view/ExtraInformWeek.jsp";
	}
	
	@RequestMapping(value = "weekinsert.action", method = RequestMethod.POST)
	public String weekInsert(@RequestParam("weekDays") ArrayList<String> weekDays, HttpSession session)
	{
		 try {
		        String memCd = (String) session.getAttribute("memCd");
		        IRegisterExtraInfoDAO dao = sqlSession.getMapper(IRegisterExtraInfoDAO.class);
		        String sCd = dao.searchSCd(memCd);
		        
		        for (String week : weekDays) {
		            dao.insertWeek(sCd, week);
		        }
		    } catch (Exception e) {
		        e.printStackTrace();  // 로그에 예외 출력
		        return "errorPage";  // 에러 페이지로 이동
		    }
		return "redirect:extrainformsize.action";
	}
	
	@RequestMapping(value = "extrainformsize.action")
	public String selectSize(Model model)
	{
		IRegisterExtraInfoDAO dao = sqlSession.getMapper(IRegisterExtraInfoDAO.class);
		
		model.addAttribute("size", dao.size());
		
		return "/WEB-INF/view/ExtraInformSize.jsp";
	}
}