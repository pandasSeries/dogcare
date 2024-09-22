package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IPetsittingListDAO;

@Controller
public class PetsittingList
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value="petsittinglist.action", method=RequestMethod.GET)
	public String petsittingList(Model model, HttpSession session)
	{
		String result = "";
		
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");
		
		IPetsittingListDAO dao = sqlSession.getMapper(IPetsittingListDAO.class);
		
		model.addAttribute("list", dao.listAll());
		model.addAttribute("memType", memType);
		
		result = "/WEB-INF/view/PetSittingList.jsp";
		
		return result;
	}
}
