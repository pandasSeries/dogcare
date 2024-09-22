package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fin.prj.dao.IMyPerformListDAO;

@Controller
public class MyPerformList
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "myperformlist.action")
	public String myPerformList(Model model, HttpSession session)
	{
		String memCd = (String)session.getAttribute("memCd");
		
		IMyPerformListDAO dao = sqlSession.getMapper(IMyPerformListDAO.class);
		
		model.addAttribute("PerformList", dao.PerformList(memCd));
		
		return "/WEB-INF/view/MyPerformList.jsp";
	}
}
