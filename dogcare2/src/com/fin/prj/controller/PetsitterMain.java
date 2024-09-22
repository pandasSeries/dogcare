package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IPetsitterMainDAO;
import com.fin.prj.dto.PetsitterInfoDTO;

@Controller
public class PetsitterMain
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "petsittermain.action")
	public String petsitterMain(Model model, HttpSession session)
	{
		String result = "";
		
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");

		IPetsitterMainDAO dao = sqlSession.getMapper(IPetsitterMainDAO.class);
		
		PetsitterInfoDTO sInfo = dao.petsitterInfo(memCd);
		String sCd = sInfo.getS_cd();
		
		sInfo.setPerform_count(dao.performCount(sCd));
		sInfo.setRating_avg(dao.ratingAvg(sCd));
		sInfo.setApply_count(dao.applyCount(sCd));
		sInfo.setMatching_count(dao.matchingCount(sCd));
		sInfo.setMonth_acc_pay(dao.monthAccPay(sCd));
		
		model.addAttribute("sInfo", sInfo);
		model.addAttribute("crbSize", dao.petsitterCrbSize(sCd));
		model.addAttribute("workDay", dao.petsitterWorkDay(sCd));
		model.addAttribute("examInfo", dao.examInfo(sCd));
		
		result = "/WEB-INF/view/PetsitterMain.jsp";
		
		return result;
	}
}
