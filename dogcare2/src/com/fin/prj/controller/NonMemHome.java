package com.fin.prj.controller;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.fin.prj.dao.IDogDAO;
import com.fin.prj.dao.INonMemHomeDAO;


@Controller
public class NonMemHome
{
	@Autowired
	private SqlSession sqlSession;
	
	@RequestMapping("home.action")
	public String nonMemHome(Model model)
	{
		String result = "";

		INonMemHomeDAO dao = sqlSession.getMapper(INonMemHomeDAO.class);
		
		int allDog = dao.allDogCount();
		int allS = dao.allSCount();
		int allPerform = dao.allPerformCount();
		
		model.addAttribute("allDog", allDog);
		model.addAttribute("allS", allS);
		model.addAttribute("allPerform", allPerform);
		
		/* result = "/WEB-INF/view/Home.jsp"; */
		result = "Home.jsp";
		
		return result;
	}
	

}
