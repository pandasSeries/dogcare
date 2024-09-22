package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IApplyPDAO;
import com.fin.prj.dao.ISApplyDAO;
import com.fin.prj.dto.SApplyDTO;


@Controller
public class ApplyP
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="petsitterapply.action", method=RequestMethod.GET)
	public String applyPath(Model model)
	{
		String result = "";
		
		IApplyPDAO dao = sqlSession.getMapper(IApplyPDAO.class);
		
		model.addAttribute("applyPath", dao.applyPath());
		
		result = "/WEB-INF/view/PetsitterApply.jsp";
		
		return result;
	}
	
	@RequestMapping(value = "petsitterapplyinsert.action", method = RequestMethod.POST)
	public String petSitterApplyInsert(SApplyDTO dto, HttpSession session)
	{
		String result = null;
		
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");
		
		ISApplyDAO dao = sqlSession.getMapper(ISApplyDAO.class);
		
		//System.out.println(dto.getApply_p_cd()+" "+dto.getExp_yn());
		
		dto.setMem_cd(memCd);
		
		dao.PetsitterApplyInsert(dto);
		
		result = "redirect:petsitterapplysuccess.action";
		return result;
	}
	
	@RequestMapping(value = "petsitterapplysuccess.action")
	public String petsitterApplySuccess()
	{
		return "/WEB-INF/view/PetsitterApplySuccess.jsp";
	}
	
	
}
