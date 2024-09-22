package com.fin.prj.controller;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Menu
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping(value = "menu.action")
	public String menu(Model model, HttpSession session)
	{
		String memCd = (String)session.getAttribute("memCd");
		String memType = (String)session.getAttribute("memType");
		
		model.addAttribute("memCd", memCd);
		model.addAttribute("memType", memType);
		
		return "/WEB-INF/view/Menu.jsp";
	}
}
