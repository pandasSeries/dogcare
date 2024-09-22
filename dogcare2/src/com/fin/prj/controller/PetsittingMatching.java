package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.fin.prj.dao.IPetsittingMatchingDAO;

@Controller
public class PetsittingMatching
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "petsittingapply.action", method = RequestMethod.GET)
	public String petsittingApply(@RequestParam("postCd") String postCd, HttpSession session)
	{
		String memCd = (String)session.getAttribute("memCd");
		
		//System.out.println(postCd);
		
		IPetsittingMatchingDAO dao = sqlSession.getMapper(IPetsittingMatchingDAO.class);
			
		dao.petsittingApply(postCd, dao.searchSCd(memCd));
		
		return "redirect:applicationcontent.action?postCd=" + postCd;
	}
	
	@RequestMapping(value = "selectpetsitter.action", method = RequestMethod.GET)
	public String selectPetsitter(@RequestParam("postCd") String postCd, @RequestParam("sCd") String sCd, HttpSession session)
	{
		String memCd = (String)session.getAttribute("memCd");
		
		IPetsittingMatchingDAO dao = sqlSession.getMapper(IPetsittingMatchingDAO.class);

		System.out.println(dao.searchApplyCd(postCd, sCd));
		System.out.println(postCd);
		System.out.println(sCd);
		
		dao.selectPetsitter(dao.searchApplyCd(postCd, sCd), dao.calPerformMoney(postCd, sCd));
	
		return "redirect:applicationcontent.action?postCd=" + postCd;
	}
}

