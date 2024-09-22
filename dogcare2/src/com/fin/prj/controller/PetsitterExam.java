package com.fin.prj.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IOmrDAO;
import com.fin.prj.dao.ITtpDAO;
import com.fin.prj.dto.OmrDTO;
import com.fin.prj.dto.TtpDTO;

@Controller
public class PetsitterExam
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "petsitterexam.action", method = RequestMethod.GET)
	public String petsitterExam(Model model)
	{
		String result = "";
		
		ITtpDAO dao = sqlSession.getMapper(ITtpDAO.class);
		
		dao.insertQ(dao.selectQ());
		
		
		model.addAttribute("qList", dao.showQ());
		model.addAttribute("aList", dao.showA());
		model.addAttribute("ttp_cd", dao.showCd());
		
		result = "/WEB-INF/view/PetsitterExamCreate.jsp";
		
		return result;
	}
	
	@RequestMapping(value="petsitterOMR.action", method = RequestMethod.POST)
	public String examOMR(Model model, OmrDTO dto, TtpDTO tdto)
	{
		String result = "";
		IOmrDAO dao = sqlSession.getMapper(IOmrDAO.class);
		
		dao.insertOmr(dto);
		
		
		model.addAttribute("score", dao.checkScore(tdto));
		
		result = "/WEB-INF/view/petsitterExamResult.jsp";
		return result ;
	}
	

}
