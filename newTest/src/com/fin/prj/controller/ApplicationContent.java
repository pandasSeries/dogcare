package com.fin.prj.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IApplicationContentDAO;
import com.fin.prj.dto.PetsitterInfoDTO;

@Controller
public class ApplicationContent
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="applicationcontent.action", method=RequestMethod.GET)
	public String applicationContent(Model model, String postCd, HttpSession session)
	{
		String result = "";
		String memCd = (String)session.getAttribute("memCd");
		
		IApplicationContentDAO dao = sqlSession.getMapper(IApplicationContentDAO.class);
		
		ArrayList<PetsitterInfoDTO> petsitterList = dao.petsitterList(postCd);
		
		for (PetsitterInfoDTO dto : petsitterList)
		{
			dto.setPerform_count(dao.performCount(dto.getS_cd()));
			dto.setRating_avg(dao.ratingAvg(dto.getS_cd()));
		}
		
		model.addAttribute("petsitterList", petsitterList);
		model.addAttribute("dogList", dao.dogList(postCd));
		model.addAttribute("content", dao.petsittingReqContent(postCd));
		model.addAttribute("reqList", dao.reqList(postCd));
		model.addAttribute("petsittingSearch", dao.petsittingSearch(postCd));
		
		result = "/WEB-INF/view/ApplicationContent.jsp";
		
		return result;
	}
	
	@RequestMapping(value="petsitterinfopopup.action", method=RequestMethod.GET)
	public String petsitterInfo(Model model, String sCd)
	{
		String result = "";
		
		IApplicationContentDAO dao = sqlSession.getMapper(IApplicationContentDAO.class);
		
		model.addAttribute("petsitterInfo", dao.petsitterInfo(sCd));
		model.addAttribute("performDetail", dao.performCountDetail(sCd));
		model.addAttribute("review", dao.review(sCd));
		model.addAttribute("lcs", dao.lcsList(sCd));
		
		result = "/WEB-INF/view/PetsitterInfoPopUp.jsp";
		
		return result;
	}
}
